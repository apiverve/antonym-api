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
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }

        /// <summary>
        /// Language to return the antonyms in. Defaults to English
        /// </summary>
        [JsonProperty("language")]
        public string Language { get; set; }
    }
}
