import React from 'react';
import { Route } from 'react-router-dom';
import PhotosSection from './components/photosSection/PhotosSection';
// import PhotoBanner from './components/photoBanner/PhotoBanner';
import './App.scss';

const App = () => {
  return (
    <div className="main">
      {/* <Route exact path="/restaurants/:id/banner" component={PhotoBanner} /> */}
      <Route exact path="/restaurants/:id" component={PhotosSection} />
    </div>
  );
};

export default App;
