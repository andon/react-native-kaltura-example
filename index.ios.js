/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View
} from 'react-native';

import { requireNativeComponent } from 'react-native';
const Kaltura = requireNativeComponent('RCTKaltura', null);
console.log('Kaltura', Kaltura);

export default class RNKalturaExample extends Component {
  render() {
    return (
      <View style={styles.container}>
        <Kaltura style={styles.kaltura} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF'
  },
  kaltura: {
    height: 180,
    width: 320
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5
  }
});

AppRegistry.registerComponent('RNKalturaExample', () => RNKalturaExample);
