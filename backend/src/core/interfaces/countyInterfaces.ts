export interface County {
  id: number;
  name: string;
  population: number;
  state_id: number;
}

export interface CountyRepository {
  createCounty(countyData: County): Promise<County>;
  getCountyById(id: number): Promise<County | null>;
}

export interface CreateCountyUseCase {
  execute(countyData: County): Promise<County>;
}

export interface GetCountyByIdUseCase {
  execute(id: number): Promise<County | null>;
}
