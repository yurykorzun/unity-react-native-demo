import React, { Component } from 'react';
import { View, Text } from 'react-native';

export default class TestView extends Component
{
	render()
	{
		return (
		<View style={{flex: 1}}>
			<View style={{flex:0.3, justifyContent: 'center', alignItems: 'center', borderWidth: 2, borderColor: 'red'}}>
				<Text>Top</Text>
			</View>
			<View  style={{flex:1, justifyContent: 'center', alignItems: 'center', borderWidth: 2, borderColor: 'green'}}>
				<Text>Second</Text>
			</View>
			<View  style={{flex:1, justifyContent: 'center', alignItems: 'center', borderWidth: 2, borderColor: 'grey'}}>
				<Text>Thrid</Text>
			</View>
			<View  style={{flex:0.2, justifyContent: 'center', alignItems: 'center', borderWidth: 2, borderColor: 'blue'}}>
				<Text>Bottom</Text>
			</View>
		</View>);
	}
}
