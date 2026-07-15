declare module '@apiverve/antonym' {
  export interface antonymOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface antonymResponse {
    status: string;
    error: string | null;
    data: AntonymFinderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AntonymFinderData {
      word:     null | string;
      language: null | string;
      antonyms: (null | string)[];
  }

  export default class antonymWrapper {
    constructor(options: antonymOptions);

    execute(callback: (error: any, data: antonymResponse | null) => void): Promise<antonymResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: antonymResponse | null) => void): Promise<antonymResponse>;
    execute(query?: Record<string, any>): Promise<antonymResponse>;
  }
}
