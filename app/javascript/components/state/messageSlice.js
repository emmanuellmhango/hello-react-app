import { createSlice } from '@reduxjs/toolkit';

const initialState = {
  message: null,
};

const messageSlice = createSlice({
  name: 'message',
  initialState,
  reducers: {
    addMessage: (state, action) => {
      // eslint-disable-next-line no-param-reassign
      state.message = action.payload;
    },
  },
});

export const { addMessage } = messageSlice.actions;
export default messageSlice.reducer;
