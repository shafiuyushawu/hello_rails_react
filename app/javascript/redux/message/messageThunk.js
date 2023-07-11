import {createAsyncThunk} from '@reduxjs/toolkit'

export const fetchGreeting = createAsyncThunk(
  'message/fetchGreeting',
  async (query, thunkAPI) => {
    try {
      const response = await fetch('/api/messages/random');
      const data = await response.json();
      return data;
    } catch (error) {
      return thunkAPI.rejectWithValue(`Error: ${error}`);
    }
  },
);