using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AntonymFinder
{
    /// <summary>
    /// Query options for the Antonym Finder API
    /// </summary>
    public class AntonymFinderQueryOptions
    {
        /// <summary>
        /// The word to get the antonyms for
        /// Example: happy
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }
    }
}
