import React, {useEffect} from "react"; 
import { Link } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { fetchGreeting } from "../redux/message/messageThunk";

const Home = () => {
  const  {greeting} = useSelector((state) => state.messages.message)
  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(fetchGreeting())
  }, [dispatch])
  return (
    <h1>{greeting}</h1>
  )
}

export default Home;