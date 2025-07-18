
/* !!! This is code generated by Prisma. Do not edit directly. !!!
/* eslint-disable */

Object.defineProperty(exports, "__esModule", { value: true });

const {
  Decimal,
  objectEnumValues,
  makeStrictEnum,
  Public,
  getRuntime,
  skip
} = require('./runtime/index-browser.js')


const Prisma = {}

exports.Prisma = Prisma
exports.$Enums = {}

/**
 * Prisma Client JS version: 6.12.0
 * Query Engine version: 8047c96bbd92db98a2abc7c9323ce77c02c89dbc
 */
Prisma.prismaVersion = {
  client: "6.12.0",
  engine: "8047c96bbd92db98a2abc7c9323ce77c02c89dbc"
}

Prisma.PrismaClientKnownRequestError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientKnownRequestError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)};
Prisma.PrismaClientUnknownRequestError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientUnknownRequestError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.PrismaClientRustPanicError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientRustPanicError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.PrismaClientInitializationError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientInitializationError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.PrismaClientValidationError = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`PrismaClientValidationError is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.Decimal = Decimal

/**
 * Re-export of sql-template-tag
 */
Prisma.sql = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`sqltag is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.empty = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`empty is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.join = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`join is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.raw = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`raw is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.validator = Public.validator

/**
* Extensions
*/
Prisma.getExtensionContext = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`Extensions.getExtensionContext is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}
Prisma.defineExtension = () => {
  const runtimeName = getRuntime().prettyName;
  throw new Error(`Extensions.defineExtension is unable to run in this browser environment, or has been bundled for the browser (running in ${runtimeName}).
In case this error is unexpected for you, please report it in https://pris.ly/prisma-prisma-bug-report`,
)}

/**
 * Shorthand utilities for JSON filtering
 */
Prisma.DbNull = objectEnumValues.instances.DbNull
Prisma.JsonNull = objectEnumValues.instances.JsonNull
Prisma.AnyNull = objectEnumValues.instances.AnyNull

Prisma.NullTypes = {
  DbNull: objectEnumValues.classes.DbNull,
  JsonNull: objectEnumValues.classes.JsonNull,
  AnyNull: objectEnumValues.classes.AnyNull
}



/**
 * Enums
 */

exports.Prisma.TransactionIsolationLevel = makeStrictEnum({
  ReadUncommitted: 'ReadUncommitted',
  ReadCommitted: 'ReadCommitted',
  RepeatableRead: 'RepeatableRead',
  Serializable: 'Serializable'
});

exports.Prisma.UsersScalarFieldEnum = {
  id: 'id',
  email: 'email',
  password: 'password',
  firstName: 'firstName',
  lastName: 'lastName',
  provider: 'provider',
  providerId: 'providerId',
  referralCode: 'referralCode',
  countryId: 'countryId',
  phone: 'phone',
  country: 'country',
  address: 'address',
  city: 'city',
  pinCode: 'pinCode',
  dateOfBirth: 'dateOfBirth',
  acceptedTerms: 'acceptedTerms',
  mfaEnabled: 'mfaEnabled',
  mfaSecret: 'mfaSecret',
  idProofFront: 'idProofFront',
  idProofBack: 'idProofBack',
  profilePicture: 'profilePicture',
  selfiePicture: 'selfiePicture',
  isVerified: 'isVerified',
  rejectionReason: 'rejectionReason',
  docSubmissionDate: 'docSubmissionDate',
  isBlocked: 'isBlocked',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt',
  docType: 'docType'
};

exports.Prisma.RolesScalarFieldEnum = {
  id: 'id',
  role: 'role',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.UserRoleMappingScalarFieldEnum = {
  id: 'id',
  userId: 'userId',
  roleId: 'roleId',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.CoinsScalarFieldEnum = {
  id: 'id',
  coinId: 'coinId',
  nameId: 'nameId',
  name: 'name',
  priceUsd: 'priceUsd',
  percentChange24h: 'percentChange24h',
  percentChange1h: 'percentChange1h',
  percentChange7d: 'percentChange7d',
  priceBtc: 'priceBtc',
  volume24: 'volume24',
  volume24a: 'volume24a',
  symbol: 'symbol',
  marketCapUsd: 'marketCapUsd',
  rank: 'rank',
  volume: 'volume',
  isVisible: 'isVisible',
  depositFee: 'depositFee',
  withdrawFee: 'withdrawFee',
  minDepositAmount: 'minDepositAmount',
  minWithdrawAmount: 'minWithdrawAmount',
  precision: 'precision',
  blockchainKey: 'blockchainKey',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.DevicesScalarFieldEnum = {
  id: 'id',
  userId: 'userId',
  fcmToken: 'fcmToken',
  archive: 'archive',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.UserWalletScalarFieldEnum = {
  id: 'id',
  userId: 'userId',
  coinId: 'coinId',
  currency: 'currency',
  status: 'status',
  maxBalance: 'maxBalance',
  blockchainKey: 'blockchainKey',
  address: 'address',
  kind: 'kind',
  settings: 'settings',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.AppConfigScalarFieldEnum = {
  id: 'id',
  key: 'key',
  value: 'value',
  type: 'type',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.TradingGroupScalarFieldEnum = {
  id: 'id',
  name: 'name',
  baseCoinId: 'baseCoinId',
  quoteCoinId: 'quoteCoinId',
  amountPrecision: 'amountPrecision',
  pricePrecision: 'pricePrecision',
  minPrice: 'minPrice',
  maxprice: 'maxprice',
  minAmount: 'minAmount',
  tradingFees: 'tradingFees',
  state: 'state',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.CoinDetailsScalarFieldEnum = {
  id: 'id',
  coinId: 'coinId',
  chain: 'chain',
  platformDecimals: 'platformDecimals',
  blockCainSites: 'blockCainSites',
  assetPlatformId: 'assetPlatformId',
  imageUrl: 'imageUrl',
  descriptionId: 'descriptionId',
  contractAddress: 'contractAddress',
  categories: 'categories',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.UserWalletTransactionScalarFieldEnum = {
  id: 'id',
  walletId: 'walletId',
  operations: 'operations',
  isAddition: 'isAddition',
  orderId: 'orderId',
  value: 'value',
  signedValue: 'signedValue',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.DepositsScalarFieldEnum = {
  id: 'id',
  userId: 'userId',
  coinId: 'coinId',
  amount: 'amount',
  fee: 'fee',
  txid: 'txid',
  address: 'address',
  state: 'state',
  blockNumber: 'blockNumber',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt',
  completedAt: 'completedAt'
};

exports.Prisma.WithdrawsScalarFieldEnum = {
  id: 'id',
  userId: 'userId',
  coinId: 'coinId',
  amount: 'amount',
  fee: 'fee',
  txid: 'txid',
  address: 'address',
  state: 'state',
  blockNumber: 'blockNumber',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt',
  completedAt: 'completedAt',
  beneficiaryId: 'beneficiaryId'
};

exports.Prisma.BeneficiariesScalarFieldEnum = {
  id: 'id',
  userId: 'userId',
  coinId: 'coinId',
  name: 'name',
  address: 'address',
  state: 'state',
  pin: 'pin',
  data: 'data',
  createdAt: 'createdAt',
  updatedAt: 'updatedAt',
  deletedAt: 'deletedAt'
};

exports.Prisma.SortOrder = {
  asc: 'asc',
  desc: 'desc'
};

exports.Prisma.NullableJsonNullValueInput = {
  DbNull: Prisma.DbNull,
  JsonNull: Prisma.JsonNull
};

exports.Prisma.QueryMode = {
  default: 'default',
  insensitive: 'insensitive'
};

exports.Prisma.NullsOrder = {
  first: 'first',
  last: 'last'
};

exports.Prisma.JsonNullValueFilter = {
  DbNull: Prisma.DbNull,
  JsonNull: Prisma.JsonNull,
  AnyNull: Prisma.AnyNull
};
exports.Process = exports.$Enums.Process = {
  PENDING: 'PENDING',
  APPROVED: 'APPROVED',
  NOTREADY: 'NOTREADY',
  REJECTED: 'REJECTED'
};

exports.Role = exports.$Enums.Role = {
  ADMIN: 'ADMIN',
  USER: 'USER'
};

exports.WalletStatus = exports.$Enums.WalletStatus = {
  ACTIVE: 'ACTIVE',
  DISABLED: 'DISABLED'
};

exports.WalletKind = exports.$Enums.WalletKind = {
  HOT: 'HOT',
  COLD: 'COLD',
  WARM: 'WARM'
};

exports.TradingGroupState = exports.$Enums.TradingGroupState = {
  ENABLED: 'ENABLED',
  DISABLED: 'DISABLED'
};

exports.OperationType = exports.$Enums.OperationType = {
  DEPOSIT: 'DEPOSIT',
  WITHDRAW: 'WITHDRAW',
  BUY: 'BUY',
  SELL: 'SELL'
};

exports.DepositState = exports.$Enums.DepositState = {
  PENDING: 'PENDING',
  ACCEPTED: 'ACCEPTED',
  REJECTED: 'REJECTED',
  COMPLETED: 'COMPLETED'
};

exports.WithdrawState = exports.$Enums.WithdrawState = {
  PENDING: 'PENDING',
  PROCESSING: 'PROCESSING',
  COMPLETED: 'COMPLETED',
  REJECTED: 'REJECTED'
};

exports.BeneficiaryState = exports.$Enums.BeneficiaryState = {
  PENDING: 'PENDING',
  ACTIVE: 'ACTIVE',
  DISABLED: 'DISABLED'
};

exports.Prisma.ModelName = {
  Users: 'Users',
  Roles: 'Roles',
  UserRoleMapping: 'UserRoleMapping',
  Coins: 'Coins',
  Devices: 'Devices',
  UserWallet: 'UserWallet',
  AppConfig: 'AppConfig',
  TradingGroup: 'TradingGroup',
  CoinDetails: 'CoinDetails',
  UserWalletTransaction: 'UserWalletTransaction',
  Deposits: 'Deposits',
  Withdraws: 'Withdraws',
  Beneficiaries: 'Beneficiaries'
};

/**
 * This is a stub Prisma Client that will error at runtime if called.
 */
class PrismaClient {
  constructor() {
    return new Proxy(this, {
      get(target, prop) {
        let message
        const runtime = getRuntime()
        if (runtime.isEdge) {
          message = `PrismaClient is not configured to run in ${runtime.prettyName}. In order to run Prisma Client on edge runtime, either:
- Use Prisma Accelerate: https://pris.ly/d/accelerate
- Use Driver Adapters: https://pris.ly/d/driver-adapters
`;
        } else {
          message = 'PrismaClient is unable to run in this browser environment, or has been bundled for the browser (running in `' + runtime.prettyName + '`).'
        }

        message += `
If this is unexpected, please open an issue: https://pris.ly/prisma-prisma-bug-report`

        throw new Error(message)
      }
    })
  }
}

exports.PrismaClient = PrismaClient

Object.assign(exports, Prisma)
