import React, { useEffect } from 'react';
import axios from 'axios';
import { useDispatch, useSelector } from 'react-redux';
import { addMessage } from './state/messageSlice';

const Greeting = () => {
  const dispatch = useDispatch();
  const { message } = useSelector((state) => state.message);

  const fetchMessage = async () => {
    try {
      const response = await axios.get('http://127.0.0.1:5000/messeges');
      const { message } = response.data;
      dispatch(addMessage(message));
    } catch (error) {
      console.log(error);
    }
  };

  useEffect(() => {
    fetchMessage();
  }, []);

  return (
    <div
      style={{
        backgroundColor: '#f5f5f5',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        height: '100vh',
      }}
    >
      <h1>{message}</h1>
    </div>
  );
};

export default Greeting;
