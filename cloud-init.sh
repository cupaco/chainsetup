#!/bin/bash
echo '# config for a read only node
[parity]
chain = "spec.json"
base_path = "readnode"
[network]
port = 30300
reserved_peers = "./bootnodes.txt"
[rpc]
port = 8540
apis = ["web3", "eth", "net", "rpc"]
cors = ["all"]
interface = "all"
hosts = ["all"]
processing_threads = 8
server_threads = 8
[websockets]
port = 8450
apis = ["web3", "eth", "net", "rpc", "pubsub"]
hosts = ["all"]
origins = ["all"]
interface = "all"
[misc]
log_file = "./qiibee.log"
color = true
[footprint]
cache_size = 16384' > /root/readnode.toml

echo 'enode://0c04931c5ff8df69fce0e937102cd6368e51987edc0b440c744e5e14e6c356a599eeac2b86dfa8c7f0b48f8718bb525345e2e2a748b02bfa6b04bc78a170f649@35.157.158.70:30300' > /root/bootnodes.txt
echo 'enode://a35668e15888250d12f6cc58a51b71dad39245beb32ef2ed49de57a2f7cca74403d3cda0b7867f31b3360acb831b76e2007eff031464192e129ae0d7ccb4e0e6@35.159.42.87:30300' >> /root/bootnodes.txt
echo '{
  "name": "qiibeePoA",
  "engine": {
    "authorityRound": {
      "params": {
        "stepDuration": "1",
        "validators": {
          "list": [
            "0x6Aa8D5E7e5df4a83b6E195D9B8990E23c7E4fb1d",
            "0x8472e52E7d6c0bb9D814777Fe6cF7229578D5c1d",
            "0xdb99f8Da29143c1650ba2DCc7c1DBfebFDcEeFA6"
          ]
        }
      }
    }
  },
  "params": {
    "networkID": "17224",
    "gasLimitBoundDivisor": "0xFFF",
    "maximumExtraDataSize": "0x20",
    "minGasLimit": "0x3FFFFFFF",
    "eip140Transition": "0x0",
    "eip211Transition": "0x0",
    "eip214Transition": "0x0",
    "eip658Transition": "0x0",
    "wasmActivationTransition": "0x0",
    "eip145Transition": "0x0",
    "eip1014Transition": "0x0",
    "eip1052Transition": "0x0",
    "eip1283Transition": "0x0",
    "kip4Transition": "0x0",
    "kip6Transition": "0x0",
    "transactionPermissionContract": "0x0000000000000000000000000000000000000009"
  },
  "genesis": {
    "seal": {
      "authorityRound": {
        "step": "0x0",
        "signature": "0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      }
    },
    "difficulty": "0x4",
    "gasLimit": "0x3FFFFFFF"
  },
  "accounts": {
    "0x0000000000000000000000000000000000000001": {
      "balance": "1",
      "builtin": {
        "name": "ecrecover",
        "pricing": {
          "linear": {
            "base": 3000,
            "word": 0
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000002": {
      "balance": "1",
      "builtin": {
        "name": "sha256",
        "pricing": {
          "linear": {
            "base": 60,
            "word": 12
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000003": {
      "balance": "1",
      "builtin": {
        "name": "ripemd160",
        "pricing": {
          "linear": {
            "base": 600,
            "word": 120
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000004": {
      "balance": "1",
      "builtin": {
        "name": "identity",
        "pricing": {
          "linear": {
            "base": 15,
            "word": 3
          }
        }
      }
  },
    "0x0000000000000000000000000000000000000005": {
      "builtin": {
        "name": "modexp",
        "activate_at": "0x0",
        "pricing": {
          "modexp": {
            "divisor": 20
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000006": {
      "builtin": {
        "name": "alt_bn128_add",
        "activate_at": "0x0",
        "pricing": {
          "linear": {
            "base": 500,
            "word": 0
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000007": {
      "builtin": {
        "name": "alt_bn128_mul",
        "activate_at": "0x0",
        "pricing": {
          "linear": {
            "base": 40000,
            "word": 0
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000008": {
      "builtin": {
        "name": "alt_bn128_pairing",
        "activate_at": "0x0",
        "pricing": {
         "alt_bn128_pairing": {
            "base": 100000,
            "pair": 80000
          }
        }
      }
    },
    "0x0000000000000000000000000000000000000009": {
      "balance": "1",
      "constructor": "0x608060405234801561001057600080fd5b50735b8fd1a6216463be2bce90b68ecf38377faadcbe600160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555063ffffffff600080600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060006101000a81548163ffffffff021916908363ffffffff16021790555061082d806100f86000396000f3fe608060405234801561001057600080fd5b5060043610610074576000357c0100000000000000000000000000000000000000000000000000000000900480637a90c444146100795780638da5cb5b146100dd578063a6f9dae114610127578063ae8e50671461016b578063e1751221146101bf575b600080fd5b6100bb6004803603602081101561008f57600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190505050610223565b604051808263ffffffff1663ffffffff16815260200191505060405180910390f35b6100e5610246565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b6101696004803603602081101561013d57600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff16906020019092919050505061026c565b005b6101bd6004803603604081101561018157600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff169060200190929190803563ffffffff169060200190929190505050610496565b005b610201600480360360208110156101d557600080fd5b81019080803573ffffffffffffffffffffffffffffffffffffffff16906020019092919050505061076c565b604051808263ffffffff1663ffffffff16815260200191505060405180910390f35b60006020528060005260406000206000915054906101000a900463ffffffff1681565b600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16141515610331576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260168152602001807f53656e6465722073686f756c64206265206f776e65720000000000000000000081525060200191505060405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff16141515156103d6576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040180806020018281038252601b8152602001807f43616e6e6f74206368616e676520746f2030782061646472657373000000000081525060200191505060405180910390fd5b8073ffffffffffffffffffffffffffffffffffffffff16600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff167f8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e060405160405180910390a380600160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff1614151561055b576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260168152602001807f53656e6465722073686f756c64206265206f776e65720000000000000000000081525060200191505060405180910390fd5b63ffffffff80168163ffffffff1614806105815750600163ffffffff168163ffffffff16145b806105985750600263ffffffff168163ffffffff16145b806105af5750600463ffffffff168163ffffffff16145b806105c65750600063ffffffff168163ffffffff16145b151561063a576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040180806020018281038252601d8152602001807f446f6573206e6f74206d6174636820616c6c6f7765642076616c75657300000081525060200191505060405180910390fd5b8173ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff16141515156106c1576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260228152602001806107e06022913960400191505060405180910390fd5b806000808473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060006101000a81548163ffffffff021916908363ffffffff1602179055508063ffffffff168273ffffffffffffffffffffffffffffffffffffffff167ff4c22f987b85c585832103abbcbf0e3f57098db9f001b25efec0b7570b59f84f60405160405180910390a35050565b6000806000808473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060009054906101000a900463ffffffff16905060008163ffffffff16146107d457806107d7565b60025b91505091905056fe4f776e65722063616e6e6f74206368616e6765206f776e207065726d697373696f6ea165627a7a72305820f741e3b472cb897e1f818f18ef3d680122ae160384f6baf9e6c1108afb1acc260029"
    },
    "0x5B8fd1A6216463be2bcE90B68ECf38377FaAdcbe": {
      "balance": "1000000000000000000000000000"
    }
  }
}' > /root/spec.json

bash <(curl https://get.parity.io -L) -r stable
(crontab -l ; echo "* * * * * /root/check.sh") | sort - | uniq - | crontab -
touch /root/check.sh
chmod +x /root/check.sh

echo '#!/bin/sh

SCREENPID=`pidof SCREEN`

if pgrep -x "parity" > /dev/null
then
    echo "Running $SCREENPID"
else
   kill $SCREENPID
   /usr/bin/screen -dmS "Node" /usr/bin/parity --config /root/readnode.toml
    echo "Stopped $SCREENPID AND STARTED!"
fi
' > /root/check.sh

bash <(/usr/bin/screen -dmS "Node" /usr/bin/parity --config /root/readnode.toml) -r stable