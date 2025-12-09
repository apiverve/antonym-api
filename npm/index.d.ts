declare module '@apiverve/antonym' {
  export interface antonymOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface antonymResponse {
    status: string;
    error: string | null;
    data: AntonymFinderData;
    code?: number;
  }


  interface AntonymFinderData {
      word:     string;
      antonyms: string[];
  }

  export default class antonymWrapper {
    constructor(options: antonymOptions);

    execute(callback: (error: any, data: antonymResponse | null) => void): Promise<antonymResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: antonymResponse | null) => void): Promise<antonymResponse>;
    execute(query?: Record<string, any>): Promise<antonymResponse>;
  }
}
