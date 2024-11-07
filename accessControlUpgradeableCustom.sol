// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/IAccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

abstract contract AccessControlUpgradeableCustom is Initializable, ContextUpgradeable, IAccessControlUpgradeable {
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(uint256 => RoleData) private _roles;

    uint128 private _tokenId;

    event RoleGranted(uint256 indexed role, address indexed account, address indexed sender);
    event RoleRevoked(uint256 indexed role, address indexed account, address indexed sender);

    function __AccessControlUpgradeableCustom_init(uint128 tokenId) internal onlyInitializing {
        __Context_init_unchained();
        _tokenId = tokenId;
    }

    function _computeRole(bytes32 roleName) internal view returns (uint256) {
        // Hash the role name and split into the uint128 hash part and the uint128 tokenId
        bytes32 roleHash = keccak256(abi.encodePacked(roleName));
        uint128 upperPart = uint128(bytes16(roleHash)); // Use the first 16 bytes of the hash for upper part
        return (uint256(upperPart) << 128) | uint256(_tokenId); // Combine into uint256
    }

    function grantRole(bytes32 roleName, address account) public {
        uint256 role = _computeRole(roleName);
        _grantRole(role, account);
    }

    function revokeRole(bytes32 roleName, address account) public {
        uint256 role = _computeRole(roleName);
        _revokeRole(role, account);
    }

    function hasRole(bytes32 roleName, address account) public view returns (bool) {
        uint256 role = _computeRole(roleName);
        return _roles[role].members[account];
    }

    function _grantRole(uint256 role, address account) internal {
        if (!_roles[role].members[account]) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    function _revokeRole(uint256 role, address account) internal {
        if (_roles[role].members[account]) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }
}
