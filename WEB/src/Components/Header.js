import React from 'react';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import {FaYoutube , FaFacebook, FaInstagram, FaTwitter} from 'react-icons/fa';
import  './Header.css';
import { Link } from 'react-router-dom';

function HeaderContainerFluid() {

  
  return (
         <Container fluid className='topHeader'>
          <Container>
     <Row className='content align-me'>
        <Col xs={6}><p>Call Us: 9876543210</p></Col>
        <Col xs={6} className='topRight'>
          
       <Link to='https://www.facebook.com/ThanvithaFood'> <FaFacebook className='icons'/> </Link>
       <Link to='https://www.facebook.com/ThanvithaFood'> <FaInstagram className='icons'/></Link>
       <Link to='https://www.facebook.com/ThanvithaFood'><FaTwitter className='icons'/></Link>
       <Link to='https://www.facebook.com/ThanvithaFood'> <FaYoutube className='icons'/>  </Link>
          
          
          </Col>
      </Row>
      </Container>
      </Container>
      
     

    
  );
}



export default HeaderContainerFluid;