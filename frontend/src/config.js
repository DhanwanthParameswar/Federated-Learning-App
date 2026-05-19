const apiUrl = (
  import.meta.env.VITE_API_URL || "https://api.dhanwanth.pp.ua"
).replace(/\/$/, "");

export const API_URL = apiUrl;
export const MODEL_URL = `${apiUrl}/fla-model/tfjs/model.json`;
export const UPDATE_URL = `${apiUrl}/update`;
