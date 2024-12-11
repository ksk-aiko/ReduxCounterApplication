import React from 'react';
import { Provider } from 'react-redux';
import store from './store';
import CounterComponent from './components/CounterComponent';

const App = () => {
   return (
       // Providerで全コンポーネントにストアを提供
       <Provider store={store}>
           <CounterComponent />
       </Provider>
   );
}

export default App;
