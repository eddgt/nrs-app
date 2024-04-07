export interface State {
  id: number;
  name: string;
  population: number;
  counties: number;
}

export interface StateDetail {
  id: number;
  name: string;
  population: number;
  state_id: number;
}
