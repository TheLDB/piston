import { getSSLHubRpcClient } from '@farcaster/hub-nodejs';

const testClient = getSSLHubRpcClient('nemes.farcaster.xyz:2283');

console.log('OK');