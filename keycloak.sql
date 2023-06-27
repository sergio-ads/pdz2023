-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 27/06/2023 às 18:48
-- Versão do servidor: 5.7.41
-- Versão do PHP: 8.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `keycloak`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ADMIN_EVENT_ENTITY`
--

CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint(20) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` varchar(2550) DEFAULT NULL,
  `REPRESENTATION` text,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ASSOCIATED_POLICY`
--

CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `AUTHENTICATION_EXECUTION`
--

CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` bit(1) NOT NULL DEFAULT b'0',
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `AUTHENTICATION_EXECUTION`
--

INSERT INTO `AUTHENTICATION_EXECUTION` (`ID`, `ALIAS`, `AUTHENTICATOR`, `REALM_ID`, `FLOW_ID`, `REQUIREMENT`, `PRIORITY`, `AUTHENTICATOR_FLOW`, `AUTH_FLOW_ID`, `AUTH_CONFIG`) VALUES
('0baa64df-7615-48af-a396-d78cc5629c72', NULL, NULL, 'master', 'f95fe450-c21d-40b1-868c-f0089a3efe4c', 2, 30, b'1', '9dda0c14-022f-46e0-8cee-85746895762c', NULL),
('0ec1441c-46b7-40ea-a1b8-779fde7b99e3', NULL, NULL, 'pdz', '84551754-d63a-4d6d-850d-9a4fcfa5bb38', 1, 20, b'1', '41b3c0b2-f571-4975-8b23-e89395f8cdf1', NULL),
('10e41b18-62b5-4505-a2a6-0d02b11eec88', NULL, 'client-x509', 'pdz', '93be416e-94e8-4bb4-a6ea-11d9fdfd034e', 2, 40, b'0', NULL, NULL),
('1a5ccb62-7220-4945-a093-bcc215803094', NULL, NULL, 'pdz', '89f22d50-346c-4a92-b1d1-3b4c094384f5', 2, 30, b'1', '6696e839-c263-4d3b-94b7-f857c3b06c60', NULL),
('1d5912b5-d664-4de9-8ef9-b30e21224d63', NULL, 'basic-auth', 'master', '054879df-dc93-444f-8730-ee87bcbe56cf', 0, 10, b'0', NULL, NULL),
('2468defd-87be-47d2-b875-d76778cb4892', NULL, 'conditional-user-configured', 'master', 'e505061a-ddf0-460b-9162-b11e0042ca57', 0, 10, b'0', NULL, NULL),
('2b51e6c2-e501-4407-b2be-e322b6137262', NULL, 'registration-user-creation', 'pdz', 'd9ada505-79c1-41df-819f-3a4907a8e3de', 0, 20, b'0', NULL, NULL),
('2b64f6c0-bd2a-44ea-9fbf-365da989d1e4', NULL, 'idp-confirm-link', 'master', '4574c9d1-35ce-492b-ae3a-d847e30c4b52', 0, 10, b'0', NULL, NULL),
('2e46bb34-7416-473e-a6c1-c076bac5f22e', NULL, 'auth-username-password-form', 'pdz', '6696e839-c263-4d3b-94b7-f857c3b06c60', 0, 10, b'0', NULL, NULL),
('2e5e7da4-85f0-40fb-a12c-f07b07cc482b', NULL, 'reset-credential-email', 'pdz', '3c3f46e4-1006-4098-987f-fc668af7a46e', 0, 20, b'0', NULL, NULL),
('2e7c8e5b-1a2c-42bd-b8c5-145650e65c1b', NULL, 'conditional-user-configured', 'master', 'cec21a8a-d015-4ae5-b896-c1a6b1be0113', 0, 10, b'0', NULL, NULL),
('2ef10273-ef7f-4289-8760-8b6c1c7f8575', NULL, NULL, 'pdz', '34205bf9-4687-43e9-972d-5ee05d3eb6d9', 2, 20, b'1', '84551754-d63a-4d6d-850d-9a4fcfa5bb38', NULL),
('33477a61-d782-4451-b1b7-ed40844b9a36', NULL, 'registration-page-form', 'pdz', 'b654a186-7648-4eee-9b42-70064d9a10ad', 0, 10, b'1', 'd9ada505-79c1-41df-819f-3a4907a8e3de', NULL),
('35420a59-0095-4472-90de-1196b2096519', NULL, 'auth-cookie', 'master', 'f95fe450-c21d-40b1-868c-f0089a3efe4c', 2, 10, b'0', NULL, NULL),
('371dc489-a573-4c76-ab69-6dabf7baf723', NULL, 'identity-provider-redirector', 'master', 'f95fe450-c21d-40b1-868c-f0089a3efe4c', 2, 25, b'0', NULL, NULL),
('3887ab28-69f4-4a2a-a6ff-5e76e83be9e5', NULL, 'docker-http-basic-authenticator', 'master', '1f8f3ec0-f170-44f1-8dfd-9e382f791b60', 0, 10, b'0', NULL, NULL),
('3b69e610-93d8-4c74-891c-bc2a994e619b', NULL, 'auth-spnego', 'master', 'f95fe450-c21d-40b1-868c-f0089a3efe4c', 3, 20, b'0', NULL, NULL),
('3ef887ee-19eb-4186-8806-643a3d6ab71d', NULL, NULL, 'master', '2b241eeb-c5a9-4a66-afb3-ff7c4a0bbfa5', 1, 20, b'1', 'e0731553-8626-42c1-aa22-c1015d2b2b16', NULL),
('434aecaf-c40e-435b-a5a8-5efa9d33ded0', NULL, 'auth-otp-form', 'master', 'e0731553-8626-42c1-aa22-c1015d2b2b16', 0, 20, b'0', NULL, NULL),
('435ef37f-69b6-4e0d-8805-c37d6e0e43b7', NULL, 'registration-profile-action', 'pdz', 'd9ada505-79c1-41df-819f-3a4907a8e3de', 0, 40, b'0', NULL, NULL),
('44ea9c36-bad0-4ca8-910c-e700fe8fcdeb', NULL, 'idp-review-profile', 'master', 'b3dfbd2a-21e8-4c24-ac61-9e256f764705', 0, 10, b'0', NULL, '59737a88-0b2c-48a1-bca2-9b593d8b2c59'),
('45452b86-28d6-4c74-9c34-e17e10654f3e', NULL, 'auth-username-password-form', 'master', '9dda0c14-022f-46e0-8cee-85746895762c', 0, 10, b'0', NULL, NULL),
('47de9a6e-a3a4-4a7d-88de-96fdfb301343', NULL, NULL, 'master', '374327c1-416a-4baa-b719-aea7e15f2405', 1, 40, b'1', 'cec21a8a-d015-4ae5-b896-c1a6b1be0113', NULL),
('48508ce3-b7ad-415d-a71d-8cb55a0023bb', NULL, 'auth-otp-form', 'pdz', '41b3c0b2-f571-4975-8b23-e89395f8cdf1', 0, 20, b'0', NULL, NULL),
('492a6ad8-82da-4258-a583-756b716a6fb1', NULL, 'idp-username-password-form', 'pdz', '84551754-d63a-4d6d-850d-9a4fcfa5bb38', 0, 10, b'0', NULL, NULL),
('4d8e554f-06f9-4144-8471-888ed0909b99', NULL, 'direct-grant-validate-otp', 'pdz', 'ec532b40-f256-4398-808d-dc899c7aa2e6', 0, 20, b'0', NULL, NULL),
('4f84023a-a963-46cd-924e-903209b6c7fa', NULL, 'auth-cookie', 'pdz', '89f22d50-346c-4a92-b1d1-3b4c094384f5', 2, 10, b'0', NULL, NULL),
('52f0af4f-8b08-4ec1-91a6-4470095e62c9', NULL, 'registration-recaptcha-action', 'master', '6dc2040b-28c7-4118-b827-0cb786945278', 3, 60, b'0', NULL, NULL),
('5448e0b4-f039-404c-9c7e-1eb76b1e5d07', NULL, 'client-jwt', 'pdz', '93be416e-94e8-4bb4-a6ea-11d9fdfd034e', 2, 20, b'0', NULL, NULL),
('5505e8ab-e165-4c54-9fd3-6b341e7c402e', NULL, 'client-x509', 'master', 'eaa2d27b-b47d-4fa4-9bf9-17923f27d519', 2, 40, b'0', NULL, NULL),
('5999ea37-fb43-48e9-adb1-ca6e0b104af3', NULL, 'conditional-user-configured', 'master', 'e0731553-8626-42c1-aa22-c1015d2b2b16', 0, 10, b'0', NULL, NULL),
('5e7010d0-0252-44a5-adfe-d7367f239a2c', NULL, NULL, 'pdz', '7b50005e-47fe-43de-a5c5-cdd604278a44', 2, 20, b'1', '886754e0-4262-4a89-afda-4f3a4a6fc9df', NULL),
('60a5068c-51c6-4f78-a84c-15f7fce4aba8', NULL, 'idp-create-user-if-unique', 'master', '7c4ba2f7-e836-4e41-9e35-0b50e2a5172d', 2, 10, b'0', NULL, '8263d2a9-dbb8-476d-ad19-c6ffd8443908'),
('60c0540d-d6c1-41ea-be55-ce500b7117f1', NULL, 'idp-email-verification', 'pdz', '34205bf9-4687-43e9-972d-5ee05d3eb6d9', 2, 10, b'0', NULL, NULL),
('6296ae78-6ee6-43db-bdb3-b00079e55750', NULL, 'auth-otp-form', 'master', 'e505061a-ddf0-460b-9162-b11e0042ca57', 0, 20, b'0', NULL, NULL),
('632f7ef7-6cf8-40e6-ad3c-2c17875690ef', NULL, 'direct-grant-validate-username', 'master', '18e08c3f-22a5-423f-8e6c-ad48b5b0d424', 0, 10, b'0', NULL, NULL),
('69741f0f-8449-4f20-958c-4799aaa85932', NULL, 'reset-password', 'pdz', '3c3f46e4-1006-4098-987f-fc668af7a46e', 0, 30, b'0', NULL, NULL),
('6ac87b28-1249-4ba5-b51a-84798db0d124', NULL, 'registration-password-action', 'master', '6dc2040b-28c7-4118-b827-0cb786945278', 0, 50, b'0', NULL, NULL),
('6b0452ec-f44b-4a5a-8018-cd11a6f0837e', NULL, NULL, 'pdz', 'b1ed5a28-facc-4eee-84a9-4f0329cafa06', 0, 20, b'1', '7b50005e-47fe-43de-a5c5-cdd604278a44', NULL),
('6c79abf9-b3cc-42ea-8119-2108e26a6165', NULL, NULL, 'master', 'b3dfbd2a-21e8-4c24-ac61-9e256f764705', 0, 20, b'1', '7c4ba2f7-e836-4e41-9e35-0b50e2a5172d', NULL),
('70b4f06b-bf05-4692-91d8-742c4d316d8a', NULL, 'basic-auth-otp', 'pdz', '218f11b5-3f2d-4096-b4ce-aea724eb5c45', 3, 20, b'0', NULL, NULL),
('7c9e703c-3018-42d4-8502-fb08160a82f2', NULL, 'auth-spnego', 'pdz', '218f11b5-3f2d-4096-b4ce-aea724eb5c45', 3, 30, b'0', NULL, NULL),
('7d582d3e-6710-475d-a570-070388590680', NULL, 'direct-grant-validate-otp', 'master', '928d973f-3526-4ae1-b6be-cddae331c0c4', 0, 20, b'0', NULL, NULL),
('828c96ce-04c1-4409-a42f-8735ab179b02', NULL, 'conditional-user-configured', 'pdz', 'b064e69c-3cfa-44f5-baf9-8c9cd1399fdf', 0, 10, b'0', NULL, NULL),
('85f1fa07-101e-4b0a-8e24-2917ba328709', NULL, 'registration-recaptcha-action', 'pdz', 'd9ada505-79c1-41df-819f-3a4907a8e3de', 3, 60, b'0', NULL, NULL),
('88305e3d-5389-497f-8e12-c23dabee9989', NULL, NULL, 'master', '18e08c3f-22a5-423f-8e6c-ad48b5b0d424', 1, 30, b'1', '928d973f-3526-4ae1-b6be-cddae331c0c4', NULL),
('88c2bfa9-d10a-46e7-a44c-01490b8c38f0', NULL, 'conditional-user-configured', 'pdz', '41b3c0b2-f571-4975-8b23-e89395f8cdf1', 0, 10, b'0', NULL, NULL),
('8f8d1dbd-07b1-46cc-9a79-2e8f1729d113', NULL, NULL, 'master', '4574c9d1-35ce-492b-ae3a-d847e30c4b52', 0, 20, b'1', '6b0cc904-aa85-4269-905b-013805420a3b', NULL),
('90966740-c09a-4147-8875-fb95096bee8e', NULL, 'idp-create-user-if-unique', 'pdz', '7b50005e-47fe-43de-a5c5-cdd604278a44', 2, 10, b'0', NULL, 'ab2c2588-2fc2-447a-b82e-c06ef05bf66a'),
('938b3bb1-7a13-43b9-b083-72b19b9bc119', NULL, 'identity-provider-redirector', 'pdz', '89f22d50-346c-4a92-b1d1-3b4c094384f5', 2, 25, b'0', NULL, NULL),
('942159c0-1bfa-4e68-9547-4f59a11a6462', NULL, 'registration-user-creation', 'master', '6dc2040b-28c7-4118-b827-0cb786945278', 0, 20, b'0', NULL, NULL),
('9674cfe4-83ec-478c-8246-9533cbbc8122', NULL, 'registration-password-action', 'pdz', 'd9ada505-79c1-41df-819f-3a4907a8e3de', 0, 50, b'0', NULL, NULL),
('996ad170-2b09-4a56-99eb-59eea15581e8', NULL, 'idp-username-password-form', 'master', '2b241eeb-c5a9-4a66-afb3-ff7c4a0bbfa5', 0, 10, b'0', NULL, NULL),
('9ac582eb-1ca3-45e7-b506-3a97a489b347', NULL, 'client-secret', 'pdz', '93be416e-94e8-4bb4-a6ea-11d9fdfd034e', 2, 10, b'0', NULL, NULL),
('a02ff857-3da9-4f37-af49-594514f8df1c', NULL, 'direct-grant-validate-username', 'pdz', 'a3190755-b374-4198-8199-4a303ce95b36', 0, 10, b'0', NULL, NULL),
('a1c3ae37-0100-410f-a1bd-a944e2141050', NULL, 'basic-auth-otp', 'master', '054879df-dc93-444f-8730-ee87bcbe56cf', 3, 20, b'0', NULL, NULL),
('a21af683-757b-4c63-aafc-24c4f3b4629d', NULL, 'registration-profile-action', 'master', '6dc2040b-28c7-4118-b827-0cb786945278', 0, 40, b'0', NULL, NULL),
('a86e4ecd-5ebd-4e6a-a45a-24d5f0f155a8', NULL, 'reset-credentials-choose-user', 'pdz', '3c3f46e4-1006-4098-987f-fc668af7a46e', 0, 10, b'0', NULL, NULL),
('accbe615-aa6e-437d-99ee-ae9bf37a9e9c', NULL, 'auth-otp-form', 'pdz', '9ab7371d-9dfc-4e29-9a78-48dc356f50b8', 0, 20, b'0', NULL, NULL),
('ae294da7-caa9-4302-9ec1-760c25bd046a', NULL, NULL, 'pdz', 'a3190755-b374-4198-8199-4a303ce95b36', 1, 30, b'1', 'ec532b40-f256-4398-808d-dc899c7aa2e6', NULL),
('b009e179-2473-46fc-9e30-75dcf4fb1b1b', NULL, NULL, 'master', '6b0cc904-aa85-4269-905b-013805420a3b', 2, 20, b'1', '2b241eeb-c5a9-4a66-afb3-ff7c4a0bbfa5', NULL),
('b1bbf8be-1034-4b8f-abfe-fc48af62827f', NULL, 'reset-credentials-choose-user', 'master', '374327c1-416a-4baa-b719-aea7e15f2405', 0, 10, b'0', NULL, NULL),
('b44f1e7d-cbe0-4766-b2df-42794d9ade59', NULL, 'no-cookie-redirect', 'master', 'a27cbb71-1d8f-42d0-97d7-e830779c7096', 0, 10, b'0', NULL, NULL),
('b470ced7-285e-4157-9627-446262786335', NULL, 'client-jwt', 'master', 'eaa2d27b-b47d-4fa4-9bf9-17923f27d519', 2, 20, b'0', NULL, NULL),
('b4fe4c1f-2c60-4b07-83c0-2e116071e272', NULL, NULL, 'master', '9dda0c14-022f-46e0-8cee-85746895762c', 1, 20, b'1', 'e505061a-ddf0-460b-9162-b11e0042ca57', NULL),
('b50a59d7-17eb-4f8b-b323-8d9e9d22d7ed', NULL, 'conditional-user-configured', 'master', '928d973f-3526-4ae1-b6be-cddae331c0c4', 0, 10, b'0', NULL, NULL),
('b5954659-56cf-42d2-8cc4-38d7edb37cca', NULL, 'registration-page-form', 'master', '8d22c9c9-2475-4ab0-93db-b1ba856f2c7c', 0, 10, b'1', '6dc2040b-28c7-4118-b827-0cb786945278', NULL),
('b5a06180-df8c-4587-8c47-0bf6d1ce67a8', NULL, NULL, 'pdz', '886754e0-4262-4a89-afda-4f3a4a6fc9df', 0, 20, b'1', '34205bf9-4687-43e9-972d-5ee05d3eb6d9', NULL),
('ba3cb2e2-ace5-464f-8412-a16146a327a9', NULL, 'idp-email-verification', 'master', '6b0cc904-aa85-4269-905b-013805420a3b', 2, 10, b'0', NULL, NULL),
('ba4fb54f-1999-4f56-8edf-1940c7f84b7f', NULL, 'reset-otp', 'master', 'cec21a8a-d015-4ae5-b896-c1a6b1be0113', 0, 20, b'0', NULL, NULL),
('c1745fcd-db0f-460c-93ea-4c1c952a57e8', NULL, 'reset-credential-email', 'master', '374327c1-416a-4baa-b719-aea7e15f2405', 0, 20, b'0', NULL, NULL),
('c76e840a-e613-4c82-8aad-420397e12b6e', NULL, 'client-secret', 'master', 'eaa2d27b-b47d-4fa4-9bf9-17923f27d519', 2, 10, b'0', NULL, NULL),
('c8f3bd6b-56e7-42b4-9506-2dd29670de7d', NULL, 'http-basic-authenticator', 'master', '0b0bab35-50ab-43e2-8395-c3b86bd2a726', 0, 10, b'0', NULL, NULL),
('c8fe15af-19f0-4aab-adf8-fb72c1c0bbdb', NULL, 'direct-grant-validate-password', 'pdz', 'a3190755-b374-4198-8199-4a303ce95b36', 0, 20, b'0', NULL, NULL),
('cd397b8b-04a2-4c6d-a9ba-7a22d360c7ed', NULL, NULL, 'master', 'a27cbb71-1d8f-42d0-97d7-e830779c7096', 0, 20, b'1', '054879df-dc93-444f-8730-ee87bcbe56cf', NULL),
('cd39bbf4-d8e2-449c-a419-4e13205752f8', NULL, 'auth-spnego', 'master', '054879df-dc93-444f-8730-ee87bcbe56cf', 3, 30, b'0', NULL, NULL),
('ce444dc4-f1be-47e4-afc6-eb983eee4f36', NULL, 'idp-confirm-link', 'pdz', '886754e0-4262-4a89-afda-4f3a4a6fc9df', 0, 10, b'0', NULL, NULL),
('d0168213-b929-4f1b-ae00-f8a1c13b9399', NULL, 'basic-auth', 'pdz', '218f11b5-3f2d-4096-b4ce-aea724eb5c45', 0, 10, b'0', NULL, NULL),
('d618db4f-3a7a-4f83-a530-24cdeebcd6cf', NULL, 'docker-http-basic-authenticator', 'pdz', '22eab2ad-cbf2-42be-be43-674498de1a9f', 0, 10, b'0', NULL, NULL),
('d61e26b1-fb94-4d11-816a-1e39e7c05ac2', NULL, NULL, 'pdz', '6696e839-c263-4d3b-94b7-f857c3b06c60', 1, 20, b'1', '9ab7371d-9dfc-4e29-9a78-48dc356f50b8', NULL),
('d6d603d9-b92d-4056-997e-eaf11fa3935d', NULL, 'client-secret-jwt', 'master', 'eaa2d27b-b47d-4fa4-9bf9-17923f27d519', 2, 30, b'0', NULL, NULL),
('deb1d537-1c6c-4ef3-a148-5c2f43d28575', NULL, 'direct-grant-validate-password', 'master', '18e08c3f-22a5-423f-8e6c-ad48b5b0d424', 0, 20, b'0', NULL, NULL),
('e3265670-0960-4b26-b9a6-403db182ba81', NULL, 'reset-password', 'master', '374327c1-416a-4baa-b719-aea7e15f2405', 0, 30, b'0', NULL, NULL),
('e59a17a8-6a34-4528-b8b0-4f00acd759be', NULL, 'auth-spnego', 'pdz', '89f22d50-346c-4a92-b1d1-3b4c094384f5', 3, 20, b'0', NULL, NULL),
('e871e6b9-53d7-42d8-a0dc-5aed584078db', NULL, 'http-basic-authenticator', 'pdz', '08d56412-1198-44fa-8505-23079c4cb1c2', 0, 10, b'0', NULL, NULL),
('e87cb3a2-1e17-45d4-8032-3c84e791efcf', NULL, NULL, 'master', '7c4ba2f7-e836-4e41-9e35-0b50e2a5172d', 2, 20, b'1', '4574c9d1-35ce-492b-ae3a-d847e30c4b52', NULL),
('e9119441-4609-4e96-a7c8-88bdb96b1ada', NULL, 'reset-otp', 'pdz', 'b064e69c-3cfa-44f5-baf9-8c9cd1399fdf', 0, 20, b'0', NULL, NULL),
('f076a815-e1e9-485e-b1cc-3d827bc9b2e7', NULL, NULL, 'pdz', '15cedc89-6c82-4c8e-bc05-936a90c6ea8e', 0, 20, b'1', '218f11b5-3f2d-4096-b4ce-aea724eb5c45', NULL),
('f08e9df2-88d1-4b32-8bcd-4f604afc6c3d', NULL, 'conditional-user-configured', 'pdz', '9ab7371d-9dfc-4e29-9a78-48dc356f50b8', 0, 10, b'0', NULL, NULL),
('f470a0d4-a9da-4266-a4db-cbdb557b5271', NULL, 'idp-review-profile', 'pdz', 'b1ed5a28-facc-4eee-84a9-4f0329cafa06', 0, 10, b'0', NULL, '0402de4a-87f2-4ca9-86d4-8fa38e3c07f7'),
('f78db916-ee5e-47d8-9340-6148888bbbaf', NULL, NULL, 'pdz', '3c3f46e4-1006-4098-987f-fc668af7a46e', 1, 40, b'1', 'b064e69c-3cfa-44f5-baf9-8c9cd1399fdf', NULL),
('fa0adb29-4e21-4eb1-bc21-48f894653694', NULL, 'no-cookie-redirect', 'pdz', '15cedc89-6c82-4c8e-bc05-936a90c6ea8e', 0, 10, b'0', NULL, NULL),
('fb2a1c8e-9d00-4642-9b96-982e9fd90ffa', NULL, 'conditional-user-configured', 'pdz', 'ec532b40-f256-4398-808d-dc899c7aa2e6', 0, 10, b'0', NULL, NULL),
('fdc9417e-fa64-4308-8127-33942f09a8ec', NULL, 'client-secret-jwt', 'pdz', '93be416e-94e8-4bb4-a6ea-11d9fdfd034e', 2, 30, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `AUTHENTICATION_FLOW`
--

CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` bit(1) NOT NULL DEFAULT b'0',
  `BUILT_IN` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `AUTHENTICATION_FLOW`
--

INSERT INTO `AUTHENTICATION_FLOW` (`ID`, `ALIAS`, `DESCRIPTION`, `REALM_ID`, `PROVIDER_ID`, `TOP_LEVEL`, `BUILT_IN`) VALUES
('054879df-dc93-444f-8730-ee87bcbe56cf', 'Authentication Options', 'Authentication options.', 'master', 'basic-flow', b'0', b'1'),
('08d56412-1198-44fa-8505-23079c4cb1c2', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'pdz', 'basic-flow', b'1', b'1'),
('0b0bab35-50ab-43e2-8395-c3b86bd2a726', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'master', 'basic-flow', b'1', b'1'),
('15cedc89-6c82-4c8e-bc05-936a90c6ea8e', 'http challenge', 'An authentication flow based on challenge-response HTTP Authentication Schemes', 'pdz', 'basic-flow', b'1', b'1'),
('18e08c3f-22a5-423f-8e6c-ad48b5b0d424', 'direct grant', 'OpenID Connect Resource Owner Grant', 'master', 'basic-flow', b'1', b'1'),
('1f8f3ec0-f170-44f1-8dfd-9e382f791b60', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'master', 'basic-flow', b'1', b'1'),
('218f11b5-3f2d-4096-b4ce-aea724eb5c45', 'Authentication Options', 'Authentication options.', 'pdz', 'basic-flow', b'0', b'1'),
('22eab2ad-cbf2-42be-be43-674498de1a9f', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'pdz', 'basic-flow', b'1', b'1'),
('2b241eeb-c5a9-4a66-afb3-ff7c4a0bbfa5', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'master', 'basic-flow', b'0', b'1'),
('34205bf9-4687-43e9-972d-5ee05d3eb6d9', 'Account verification options', 'Method with which to verity the existing account', 'pdz', 'basic-flow', b'0', b'1'),
('374327c1-416a-4baa-b719-aea7e15f2405', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'master', 'basic-flow', b'1', b'1'),
('3c3f46e4-1006-4098-987f-fc668af7a46e', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'pdz', 'basic-flow', b'1', b'1'),
('41b3c0b2-f571-4975-8b23-e89395f8cdf1', 'First broker login - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'pdz', 'basic-flow', b'0', b'1'),
('4574c9d1-35ce-492b-ae3a-d847e30c4b52', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'master', 'basic-flow', b'0', b'1'),
('6696e839-c263-4d3b-94b7-f857c3b06c60', 'forms', 'Username, password, otp and other auth forms.', 'pdz', 'basic-flow', b'0', b'1'),
('6b0cc904-aa85-4269-905b-013805420a3b', 'Account verification options', 'Method with which to verity the existing account', 'master', 'basic-flow', b'0', b'1'),
('6dc2040b-28c7-4118-b827-0cb786945278', 'registration form', 'registration form', 'master', 'form-flow', b'0', b'1'),
('7b50005e-47fe-43de-a5c5-cdd604278a44', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'pdz', 'basic-flow', b'0', b'1'),
('7c4ba2f7-e836-4e41-9e35-0b50e2a5172d', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'master', 'basic-flow', b'0', b'1'),
('84551754-d63a-4d6d-850d-9a4fcfa5bb38', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'pdz', 'basic-flow', b'0', b'1'),
('886754e0-4262-4a89-afda-4f3a4a6fc9df', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'pdz', 'basic-flow', b'0', b'1'),
('89f22d50-346c-4a92-b1d1-3b4c094384f5', 'browser', 'browser based authentication', 'pdz', 'basic-flow', b'1', b'1'),
('8d22c9c9-2475-4ab0-93db-b1ba856f2c7c', 'registration', 'registration flow', 'master', 'basic-flow', b'1', b'1'),
('928d973f-3526-4ae1-b6be-cddae331c0c4', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', b'0', b'1'),
('93be416e-94e8-4bb4-a6ea-11d9fdfd034e', 'clients', 'Base authentication for clients', 'pdz', 'client-flow', b'1', b'1'),
('9ab7371d-9dfc-4e29-9a78-48dc356f50b8', 'Browser - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'pdz', 'basic-flow', b'0', b'1'),
('9dda0c14-022f-46e0-8cee-85746895762c', 'forms', 'Username, password, otp and other auth forms.', 'master', 'basic-flow', b'0', b'1'),
('a27cbb71-1d8f-42d0-97d7-e830779c7096', 'http challenge', 'An authentication flow based on challenge-response HTTP Authentication Schemes', 'master', 'basic-flow', b'1', b'1'),
('a3190755-b374-4198-8199-4a303ce95b36', 'direct grant', 'OpenID Connect Resource Owner Grant', 'pdz', 'basic-flow', b'1', b'1'),
('b064e69c-3cfa-44f5-baf9-8c9cd1399fdf', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'pdz', 'basic-flow', b'0', b'1'),
('b1ed5a28-facc-4eee-84a9-4f0329cafa06', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'pdz', 'basic-flow', b'1', b'1'),
('b3dfbd2a-21e8-4c24-ac61-9e256f764705', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'master', 'basic-flow', b'1', b'1'),
('b654a186-7648-4eee-9b42-70064d9a10ad', 'registration', 'registration flow', 'pdz', 'basic-flow', b'1', b'1'),
('cec21a8a-d015-4ae5-b896-c1a6b1be0113', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'master', 'basic-flow', b'0', b'1'),
('d9ada505-79c1-41df-819f-3a4907a8e3de', 'registration form', 'registration form', 'pdz', 'form-flow', b'0', b'1'),
('e0731553-8626-42c1-aa22-c1015d2b2b16', 'First broker login - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', b'0', b'1'),
('e505061a-ddf0-460b-9162-b11e0042ca57', 'Browser - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', b'0', b'1'),
('eaa2d27b-b47d-4fa4-9bf9-17923f27d519', 'clients', 'Base authentication for clients', 'master', 'client-flow', b'1', b'1'),
('ec532b40-f256-4398-808d-dc899c7aa2e6', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'pdz', 'basic-flow', b'0', b'1'),
('f95fe450-c21d-40b1-868c-f0089a3efe4c', 'browser', 'browser based authentication', 'master', 'basic-flow', b'1', b'1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `AUTHENTICATOR_CONFIG`
--

CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `AUTHENTICATOR_CONFIG`
--

INSERT INTO `AUTHENTICATOR_CONFIG` (`ID`, `ALIAS`, `REALM_ID`) VALUES
('0402de4a-87f2-4ca9-86d4-8fa38e3c07f7', 'review profile config', 'pdz'),
('59737a88-0b2c-48a1-bca2-9b593d8b2c59', 'review profile config', 'master'),
('8263d2a9-dbb8-476d-ad19-c6ffd8443908', 'create unique user config', 'master'),
('ab2c2588-2fc2-447a-b82e-c06ef05bf66a', 'create unique user config', 'pdz');

-- --------------------------------------------------------

--
-- Estrutura para tabela `AUTHENTICATOR_CONFIG_ENTRY`
--

CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `AUTHENTICATOR_CONFIG_ENTRY`
--

INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` (`AUTHENTICATOR_ID`, `VALUE`, `NAME`) VALUES
('0402de4a-87f2-4ca9-86d4-8fa38e3c07f7', 'missing', 'update.profile.on.first.login'),
('59737a88-0b2c-48a1-bca2-9b593d8b2c59', 'missing', 'update.profile.on.first.login'),
('8263d2a9-dbb8-476d-ad19-c6ffd8443908', 'false', 'require.password.update.after.registration'),
('ab2c2588-2fc2-447a-b82e-c06ef05bf66a', 'false', 'require.password.update.after.registration');

-- --------------------------------------------------------

--
-- Estrutura para tabela `BROKER_LINK`
--

CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT`
--

CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FULL_SCOPE_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` bit(1) NOT NULL DEFAULT b'0',
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT '0',
  `FRONTCHANNEL_LOGOUT` bit(1) NOT NULL DEFAULT b'0',
  `CONSENT_REQUIRED` bit(1) NOT NULL DEFAULT b'0',
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'1',
  `IMPLICIT_FLOW_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DIRECT_ACCESS_GRANTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ALWAYS_DISPLAY_IN_CONSOLE` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `CLIENT`
--

INSERT INTO `CLIENT` (`ID`, `ENABLED`, `FULL_SCOPE_ALLOWED`, `CLIENT_ID`, `NOT_BEFORE`, `PUBLIC_CLIENT`, `SECRET`, `BASE_URL`, `BEARER_ONLY`, `MANAGEMENT_URL`, `SURROGATE_AUTH_REQUIRED`, `REALM_ID`, `PROTOCOL`, `NODE_REREG_TIMEOUT`, `FRONTCHANNEL_LOGOUT`, `CONSENT_REQUIRED`, `NAME`, `SERVICE_ACCOUNTS_ENABLED`, `CLIENT_AUTHENTICATOR_TYPE`, `ROOT_URL`, `DESCRIPTION`, `REGISTRATION_TOKEN`, `STANDARD_FLOW_ENABLED`, `IMPLICIT_FLOW_ENABLED`, `DIRECT_ACCESS_GRANTS_ENABLED`, `ALWAYS_DISPLAY_IN_CONSOLE`) VALUES
('03723fb9-120e-453d-b715-54158a44da7c', b'1', b'0', 'pdz-realm', 0, b'0', NULL, NULL, b'1', NULL, b'0', 'master', NULL, 0, b'0', b'0', 'pdz Realm', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', b'1', b'0', 'broker', 0, b'0', NULL, NULL, b'1', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_broker}', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', b'1', b'0', 'account-console', 0, b'1', NULL, '/realms/pdz/account/', b'0', NULL, b'0', 'pdz', 'openid-connect', 0, b'0', b'0', '${client_account-console}', b'0', 'client-secret', '${authBaseUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('237adfce-1bee-4ef5-944d-4a0299b18929', b'1', b'0', 'security-admin-console', 0, b'1', NULL, '/admin/pdz/console/', b'0', NULL, b'0', 'pdz', 'openid-connect', 0, b'0', b'0', '${client_security-admin-console}', b'0', 'client-secret', '${authAdminUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', b'1', b'1', 'pdz-app-admin', 0, b'0', 'b237677b-34b9-4a58-9175-07bb786e10a8', NULL, b'0', NULL, b'0', 'pdz', 'openid-connect', -1, b'0', b'0', NULL, b'1', 'client-secret', NULL, NULL, NULL, b'0', b'0', b'0', b'0'),
('3f23e793-cb04-460e-a727-0e47a4f5c796', b'1', b'0', 'admin-cli', 0, b'1', NULL, NULL, b'0', NULL, b'0', 'pdz', 'openid-connect', 0, b'0', b'0', '${client_admin-cli}', b'0', 'client-secret', NULL, NULL, NULL, b'0', b'0', b'1', b'0'),
('5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', b'0', 'master-realm', 0, b'0', NULL, NULL, b'1', NULL, b'0', 'master', NULL, 0, b'0', b'0', 'master Realm', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', b'1', b'0', 'account', 0, b'1', NULL, '/realms/master/account/', b'0', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_account}', b'0', 'client-secret', '${authBaseUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('87ece354-e588-4e04-bf35-cb2735739493', b'1', b'0', 'account', 0, b'1', NULL, '/realms/pdz/account/', b'0', NULL, b'0', 'pdz', 'openid-connect', 0, b'0', b'0', '${client_account}', b'0', 'client-secret', '${authBaseUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('9ed65088-92fe-408c-9f86-4eb2f7bd3931', b'1', b'0', 'admin-cli', 0, b'1', NULL, NULL, b'0', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_admin-cli}', b'0', 'client-secret', NULL, NULL, NULL, b'0', b'0', b'1', b'0'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', b'1', b'0', 'security-admin-console', 0, b'1', NULL, '/admin/master/console/', b'0', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_security-admin-console}', b'0', 'client-secret', '${authAdminUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', b'1', b'1', 'pdz-app-login', 0, b'1', NULL, NULL, b'0', NULL, b'0', 'pdz', 'openid-connect', -1, b'0', b'0', NULL, b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'1', b'0'),
('f7a311eb-eb13-47ec-9ed2-4967ef0debdc', b'1', b'0', 'broker', 0, b'0', NULL, NULL, b'1', NULL, b'0', 'pdz', 'openid-connect', 0, b'0', b'0', '${client_broker}', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', b'1', b'0', 'account-console', 0, b'1', NULL, '/realms/master/account/', b'0', NULL, b'0', 'master', 'openid-connect', 0, b'0', b'0', '${client_account-console}', b'0', 'client-secret', '${authBaseUrl}', NULL, NULL, b'1', b'0', b'0', b'0'),
('fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', b'0', 'realm-management', 0, b'0', NULL, NULL, b'1', NULL, b'0', 'pdz', 'openid-connect', 0, b'0', b'0', '${client_realm-management}', b'0', 'client-secret', NULL, NULL, NULL, b'1', b'0', b'0', b'0'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', b'1', b'1', 'pdz-app-user', 0, b'0', '06d8e4db-1be8-4775-8b65-fd529fd0cf54', NULL, b'0', NULL, b'0', 'pdz', 'openid-connect', -1, b'0', b'0', NULL, b'1', 'client-secret', NULL, NULL, NULL, b'0', b'0', b'0', b'0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_ATTRIBUTES`
--

CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `CLIENT_ATTRIBUTES`
--

INSERT INTO `CLIENT_ATTRIBUTES` (`CLIENT_ID`, `VALUE`, `NAME`) VALUES
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', 'S256', 'pkce.code.challenge.method'),
('237adfce-1bee-4ef5-944d-4a0299b18929', 'S256', 'pkce.code.challenge.method'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'backchannel.logout.revoke.offline.tokens'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'true', 'backchannel.logout.session.required'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'true', 'client_credentials.use_refresh_token'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'display.on.consent.screen'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'exclude.session.state.from.auth.response'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'oauth2.device.authorization.grant.enabled'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'oidc.ciba.grant.enabled'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.artifact.binding'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.assertion.signature'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.authnstatement'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.client.signature'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.encrypt'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.force.post.binding'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.multivalued.roles'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.onetimeuse.condition'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.server.signature'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml.server.signature.keyinfo.ext'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'saml_force_name_id_format'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'false', 'tls.client.certificate.bound.access.tokens'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'true', 'use.refresh.tokens'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', 'S256', 'pkce.code.challenge.method'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', 'false', 'backchannel.logout.revoke.offline.tokens'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', 'true', 'backchannel.logout.session.required'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', 'S256', 'pkce.code.challenge.method'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'backchannel.logout.revoke.offline.tokens'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'true', 'backchannel.logout.session.required'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'true', 'client_credentials.use_refresh_token'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'display.on.consent.screen'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'exclude.session.state.from.auth.response'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'oauth2.device.authorization.grant.enabled'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'oidc.ciba.grant.enabled'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.artifact.binding'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.assertion.signature'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.authnstatement'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.client.signature'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.encrypt'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.force.post.binding'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.multivalued.roles'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.onetimeuse.condition'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.server.signature'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml.server.signature.keyinfo.ext'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'saml_force_name_id_format'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'false', 'tls.client.certificate.bound.access.tokens'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'true', 'use.refresh.tokens');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_AUTH_FLOW_BINDINGS`
--

CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_INITIAL_ACCESS`
--

CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `EXPIRATION` int(11) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `REMAINING_COUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_NODE_REGISTRATIONS`
--

CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_SCOPE`
--

CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `CLIENT_SCOPE`
--

INSERT INTO `CLIENT_SCOPE` (`ID`, `NAME`, `REALM_ID`, `DESCRIPTION`, `PROTOCOL`) VALUES
('0c6e0965-7a42-4226-8c35-4f14fc6a6681', 'email', 'master', 'OpenID Connect built-in scope: email', 'openid-connect'),
('0f22aa42-f10f-4df9-ac01-b40bb156f737', 'microprofile-jwt', 'master', 'Microprofile - JWT built-in scope', 'openid-connect'),
('138eaeca-610d-4b9a-8bb5-ba5463fc3865', 'role_list', 'pdz', 'SAML role list', 'saml'),
('1448e5bb-1f8c-4531-83af-b195f4a2166d', 'web-origins', 'master', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect'),
('44ef7104-d0ce-4abb-affd-6e07be16d30d', 'email', 'pdz', 'OpenID Connect built-in scope: email', 'openid-connect'),
('5118c2fd-d2f8-4cb6-ae13-d1245ead21df', 'profile', 'pdz', 'OpenID Connect built-in scope: profile', 'openid-connect'),
('51934a88-d20c-4791-8a43-ecec4b9ad1be', 'roles', 'pdz', 'OpenID Connect scope for add user roles to the access token', 'openid-connect'),
('5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', 'address', 'master', 'OpenID Connect built-in scope: address', 'openid-connect'),
('824b6238-edab-4cb6-8542-ab3aebac772a', 'profile', 'master', 'OpenID Connect built-in scope: profile', 'openid-connect'),
('83d51a7f-d7ae-4ec9-8909-9a014b6c080a', 'phone', 'pdz', 'OpenID Connect built-in scope: phone', 'openid-connect'),
('88968a16-1513-47bd-a057-bbaf681d6e7f', 'role_list', 'master', 'SAML role list', 'saml'),
('95d8156c-0db1-429a-a782-2357c0218e7a', 'address', 'pdz', 'OpenID Connect built-in scope: address', 'openid-connect'),
('b233e5af-e8b0-425a-a8be-46eafee34ca2', 'web-origins', 'pdz', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect'),
('b77907ea-9345-494c-abd0-5a81ceb34ef3', 'offline_access', 'pdz', 'OpenID Connect built-in scope: offline_access', 'openid-connect'),
('b77d67bf-4c14-4701-b475-3faf4e0f9bff', 'phone', 'master', 'OpenID Connect built-in scope: phone', 'openid-connect'),
('d5318c07-04cf-4802-8f82-f99d208286e3', 'roles', 'master', 'OpenID Connect scope for add user roles to the access token', 'openid-connect'),
('e1211677-4311-43bb-a189-392deddb4fd5', 'microprofile-jwt', 'pdz', 'Microprofile - JWT built-in scope', 'openid-connect'),
('fbd2cffc-adfe-4309-b1de-cce3fa739286', 'offline_access', 'master', 'OpenID Connect built-in scope: offline_access', 'openid-connect');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_SCOPE_ATTRIBUTES`
--

CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `CLIENT_SCOPE_ATTRIBUTES`
--

INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` (`SCOPE_ID`, `VALUE`, `NAME`) VALUES
('0c6e0965-7a42-4226-8c35-4f14fc6a6681', '${emailScopeConsentText}', 'consent.screen.text'),
('0c6e0965-7a42-4226-8c35-4f14fc6a6681', 'true', 'display.on.consent.screen'),
('0c6e0965-7a42-4226-8c35-4f14fc6a6681', 'true', 'include.in.token.scope'),
('0f22aa42-f10f-4df9-ac01-b40bb156f737', 'false', 'display.on.consent.screen'),
('0f22aa42-f10f-4df9-ac01-b40bb156f737', 'true', 'include.in.token.scope'),
('138eaeca-610d-4b9a-8bb5-ba5463fc3865', '${samlRoleListScopeConsentText}', 'consent.screen.text'),
('138eaeca-610d-4b9a-8bb5-ba5463fc3865', 'true', 'display.on.consent.screen'),
('1448e5bb-1f8c-4531-83af-b195f4a2166d', '', 'consent.screen.text'),
('1448e5bb-1f8c-4531-83af-b195f4a2166d', 'false', 'display.on.consent.screen'),
('1448e5bb-1f8c-4531-83af-b195f4a2166d', 'false', 'include.in.token.scope'),
('44ef7104-d0ce-4abb-affd-6e07be16d30d', '${emailScopeConsentText}', 'consent.screen.text'),
('44ef7104-d0ce-4abb-affd-6e07be16d30d', 'true', 'display.on.consent.screen'),
('44ef7104-d0ce-4abb-affd-6e07be16d30d', 'true', 'include.in.token.scope'),
('5118c2fd-d2f8-4cb6-ae13-d1245ead21df', '${profileScopeConsentText}', 'consent.screen.text'),
('5118c2fd-d2f8-4cb6-ae13-d1245ead21df', 'true', 'display.on.consent.screen'),
('5118c2fd-d2f8-4cb6-ae13-d1245ead21df', 'true', 'include.in.token.scope'),
('51934a88-d20c-4791-8a43-ecec4b9ad1be', '${rolesScopeConsentText}', 'consent.screen.text'),
('51934a88-d20c-4791-8a43-ecec4b9ad1be', 'true', 'display.on.consent.screen'),
('51934a88-d20c-4791-8a43-ecec4b9ad1be', 'false', 'include.in.token.scope'),
('5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', '${addressScopeConsentText}', 'consent.screen.text'),
('5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', 'true', 'display.on.consent.screen'),
('5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', 'true', 'include.in.token.scope'),
('824b6238-edab-4cb6-8542-ab3aebac772a', '${profileScopeConsentText}', 'consent.screen.text'),
('824b6238-edab-4cb6-8542-ab3aebac772a', 'true', 'display.on.consent.screen'),
('824b6238-edab-4cb6-8542-ab3aebac772a', 'true', 'include.in.token.scope'),
('83d51a7f-d7ae-4ec9-8909-9a014b6c080a', '${phoneScopeConsentText}', 'consent.screen.text'),
('83d51a7f-d7ae-4ec9-8909-9a014b6c080a', 'true', 'display.on.consent.screen'),
('83d51a7f-d7ae-4ec9-8909-9a014b6c080a', 'true', 'include.in.token.scope'),
('88968a16-1513-47bd-a057-bbaf681d6e7f', '${samlRoleListScopeConsentText}', 'consent.screen.text'),
('88968a16-1513-47bd-a057-bbaf681d6e7f', 'true', 'display.on.consent.screen'),
('95d8156c-0db1-429a-a782-2357c0218e7a', '${addressScopeConsentText}', 'consent.screen.text'),
('95d8156c-0db1-429a-a782-2357c0218e7a', 'true', 'display.on.consent.screen'),
('95d8156c-0db1-429a-a782-2357c0218e7a', 'true', 'include.in.token.scope'),
('b233e5af-e8b0-425a-a8be-46eafee34ca2', '', 'consent.screen.text'),
('b233e5af-e8b0-425a-a8be-46eafee34ca2', 'false', 'display.on.consent.screen'),
('b233e5af-e8b0-425a-a8be-46eafee34ca2', 'false', 'include.in.token.scope'),
('b77907ea-9345-494c-abd0-5a81ceb34ef3', '${offlineAccessScopeConsentText}', 'consent.screen.text'),
('b77907ea-9345-494c-abd0-5a81ceb34ef3', 'true', 'display.on.consent.screen'),
('b77d67bf-4c14-4701-b475-3faf4e0f9bff', '${phoneScopeConsentText}', 'consent.screen.text'),
('b77d67bf-4c14-4701-b475-3faf4e0f9bff', 'true', 'display.on.consent.screen'),
('b77d67bf-4c14-4701-b475-3faf4e0f9bff', 'true', 'include.in.token.scope'),
('d5318c07-04cf-4802-8f82-f99d208286e3', '${rolesScopeConsentText}', 'consent.screen.text'),
('d5318c07-04cf-4802-8f82-f99d208286e3', 'true', 'display.on.consent.screen'),
('d5318c07-04cf-4802-8f82-f99d208286e3', 'false', 'include.in.token.scope'),
('e1211677-4311-43bb-a189-392deddb4fd5', 'false', 'display.on.consent.screen'),
('e1211677-4311-43bb-a189-392deddb4fd5', 'true', 'include.in.token.scope'),
('fbd2cffc-adfe-4309-b1de-cce3fa739286', '${offlineAccessScopeConsentText}', 'consent.screen.text'),
('fbd2cffc-adfe-4309-b1de-cce3fa739286', 'true', 'display.on.consent.screen');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_SCOPE_CLIENT`
--

CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `SCOPE_ID` varchar(255) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `CLIENT_SCOPE_CLIENT`
--

INSERT INTO `CLIENT_SCOPE_CLIENT` (`CLIENT_ID`, `SCOPE_ID`, `DEFAULT_SCOPE`) VALUES
('0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', '0c6e0965-7a42-4226-8c35-4f14fc6a6681', b'1'),
('0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', '0f22aa42-f10f-4df9-ac01-b40bb156f737', b'0'),
('0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', '1448e5bb-1f8c-4531-83af-b195f4a2166d', b'1'),
('0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', '5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', b'0'),
('0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', '824b6238-edab-4cb6-8542-ab3aebac772a', b'1'),
('0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', 'b77d67bf-4c14-4701-b475-3faf4e0f9bff', b'0'),
('0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', 'd5318c07-04cf-4802-8f82-f99d208286e3', b'1'),
('0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', 'fbd2cffc-adfe-4309-b1de-cce3fa739286', b'0'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0'),
('237adfce-1bee-4ef5-944d-4a0299b18929', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('237adfce-1bee-4ef5-944d-4a0299b18929', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('237adfce-1bee-4ef5-944d-4a0299b18929', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('237adfce-1bee-4ef5-944d-4a0299b18929', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('237adfce-1bee-4ef5-944d-4a0299b18929', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('237adfce-1bee-4ef5-944d-4a0299b18929', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('237adfce-1bee-4ef5-944d-4a0299b18929', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('237adfce-1bee-4ef5-944d-4a0299b18929', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('3b9fe014-da15-4287-99e4-2c64c45bb1bc', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0'),
('3f23e793-cb04-460e-a727-0e47a4f5c796', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('3f23e793-cb04-460e-a727-0e47a4f5c796', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('3f23e793-cb04-460e-a727-0e47a4f5c796', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('3f23e793-cb04-460e-a727-0e47a4f5c796', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('3f23e793-cb04-460e-a727-0e47a4f5c796', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('3f23e793-cb04-460e-a727-0e47a4f5c796', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('3f23e793-cb04-460e-a727-0e47a4f5c796', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('3f23e793-cb04-460e-a727-0e47a4f5c796', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0'),
('5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', '0c6e0965-7a42-4226-8c35-4f14fc6a6681', b'1'),
('5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', '0f22aa42-f10f-4df9-ac01-b40bb156f737', b'0'),
('5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', '1448e5bb-1f8c-4531-83af-b195f4a2166d', b'1'),
('5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', '5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', b'0'),
('5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', '824b6238-edab-4cb6-8542-ab3aebac772a', b'1'),
('5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', 'b77d67bf-4c14-4701-b475-3faf4e0f9bff', b'0'),
('5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', 'd5318c07-04cf-4802-8f82-f99d208286e3', b'1'),
('5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', 'fbd2cffc-adfe-4309-b1de-cce3fa739286', b'0'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', '0c6e0965-7a42-4226-8c35-4f14fc6a6681', b'1'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', '0f22aa42-f10f-4df9-ac01-b40bb156f737', b'0'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', '1448e5bb-1f8c-4531-83af-b195f4a2166d', b'1'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', '5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', b'0'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', '824b6238-edab-4cb6-8542-ab3aebac772a', b'1'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', 'b77d67bf-4c14-4701-b475-3faf4e0f9bff', b'0'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', 'd5318c07-04cf-4802-8f82-f99d208286e3', b'1'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', 'fbd2cffc-adfe-4309-b1de-cce3fa739286', b'0'),
('87ece354-e588-4e04-bf35-cb2735739493', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('87ece354-e588-4e04-bf35-cb2735739493', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('87ece354-e588-4e04-bf35-cb2735739493', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('87ece354-e588-4e04-bf35-cb2735739493', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('87ece354-e588-4e04-bf35-cb2735739493', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('87ece354-e588-4e04-bf35-cb2735739493', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('87ece354-e588-4e04-bf35-cb2735739493', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('87ece354-e588-4e04-bf35-cb2735739493', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0'),
('9ed65088-92fe-408c-9f86-4eb2f7bd3931', '0c6e0965-7a42-4226-8c35-4f14fc6a6681', b'1'),
('9ed65088-92fe-408c-9f86-4eb2f7bd3931', '0f22aa42-f10f-4df9-ac01-b40bb156f737', b'0'),
('9ed65088-92fe-408c-9f86-4eb2f7bd3931', '1448e5bb-1f8c-4531-83af-b195f4a2166d', b'1'),
('9ed65088-92fe-408c-9f86-4eb2f7bd3931', '5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', b'0'),
('9ed65088-92fe-408c-9f86-4eb2f7bd3931', '824b6238-edab-4cb6-8542-ab3aebac772a', b'1'),
('9ed65088-92fe-408c-9f86-4eb2f7bd3931', 'b77d67bf-4c14-4701-b475-3faf4e0f9bff', b'0'),
('9ed65088-92fe-408c-9f86-4eb2f7bd3931', 'd5318c07-04cf-4802-8f82-f99d208286e3', b'1'),
('9ed65088-92fe-408c-9f86-4eb2f7bd3931', 'fbd2cffc-adfe-4309-b1de-cce3fa739286', b'0'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', '0c6e0965-7a42-4226-8c35-4f14fc6a6681', b'1'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', '0f22aa42-f10f-4df9-ac01-b40bb156f737', b'0'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', '1448e5bb-1f8c-4531-83af-b195f4a2166d', b'1'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', '5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', b'0'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', '824b6238-edab-4cb6-8542-ab3aebac772a', b'1'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', 'b77d67bf-4c14-4701-b475-3faf4e0f9bff', b'0'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', 'd5318c07-04cf-4802-8f82-f99d208286e3', b'1'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', 'fbd2cffc-adfe-4309-b1de-cce3fa739286', b'0'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('dfc09fa7-04ca-4e95-891c-2205f95b008b', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0'),
('f7a311eb-eb13-47ec-9ed2-4967ef0debdc', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('f7a311eb-eb13-47ec-9ed2-4967ef0debdc', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('f7a311eb-eb13-47ec-9ed2-4967ef0debdc', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('f7a311eb-eb13-47ec-9ed2-4967ef0debdc', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('f7a311eb-eb13-47ec-9ed2-4967ef0debdc', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('f7a311eb-eb13-47ec-9ed2-4967ef0debdc', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('f7a311eb-eb13-47ec-9ed2-4967ef0debdc', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('f7a311eb-eb13-47ec-9ed2-4967ef0debdc', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', '0c6e0965-7a42-4226-8c35-4f14fc6a6681', b'1'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', '0f22aa42-f10f-4df9-ac01-b40bb156f737', b'0'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', '1448e5bb-1f8c-4531-83af-b195f4a2166d', b'1'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', '5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', b'0'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', '824b6238-edab-4cb6-8542-ab3aebac772a', b'1'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', 'b77d67bf-4c14-4701-b475-3faf4e0f9bff', b'0'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', 'd5318c07-04cf-4802-8f82-f99d208286e3', b'1'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', 'fbd2cffc-adfe-4309-b1de-cce3fa739286', b'0'),
('fbd35ffa-46c9-4028-87c4-45b1c4288a9c', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('fbd35ffa-46c9-4028-87c4-45b1c4288a9c', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('fbd35ffa-46c9-4028-87c4-45b1c4288a9c', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('fbd35ffa-46c9-4028-87c4-45b1c4288a9c', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('fbd35ffa-46c9-4028-87c4-45b1c4288a9c', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('fbd35ffa-46c9-4028-87c4-45b1c4288a9c', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('fbd35ffa-46c9-4028-87c4-45b1c4288a9c', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('fbd35ffa-46c9-4028-87c4-45b1c4288a9c', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_SCOPE_ROLE_MAPPING`
--

CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `CLIENT_SCOPE_ROLE_MAPPING`
--

INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` (`SCOPE_ID`, `ROLE_ID`) VALUES
('b77907ea-9345-494c-abd0-5a81ceb34ef3', 'b6b03b38-7837-479a-b6ef-3b43ef346ba9'),
('fbd2cffc-adfe-4309-b1de-cce3fa739286', 'dbc9e856-caf3-4b06-808d-aa7f057dbd50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_SESSION`
--

CREATE TABLE `CLIENT_SESSION` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REDIRECT_URI` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `SESSION_ID` varchar(36) DEFAULT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(36) DEFAULT NULL,
  `CURRENT_ACTION` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_SESSION_AUTH_STATUS`
--

CREATE TABLE `CLIENT_SESSION_AUTH_STATUS` (
  `AUTHENTICATOR` varchar(36) NOT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_SESSION_NOTE`
--

CREATE TABLE `CLIENT_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_SESSION_PROT_MAPPER`
--

CREATE TABLE `CLIENT_SESSION_PROT_MAPPER` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_SESSION_ROLE`
--

CREATE TABLE `CLIENT_SESSION_ROLE` (
  `ROLE_ID` varchar(255) NOT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `CLIENT_USER_SESSION_NOTE`
--

CREATE TABLE `CLIENT_USER_SESSION_NOTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL,
  `CLIENT_SESSION` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `COMPONENT`
--

CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `COMPONENT`
--

INSERT INTO `COMPONENT` (`ID`, `NAME`, `PARENT_ID`, `PROVIDER_ID`, `PROVIDER_TYPE`, `REALM_ID`, `SUB_TYPE`) VALUES
('18c2e90d-61c1-455f-bd35-882b42433557', 'Allowed Client Scopes', 'pdz', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'pdz', 'authenticated'),
('1f9d476d-4d5d-43f9-9094-518967da47d4', 'Full Scope Disabled', 'pdz', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'pdz', 'anonymous'),
('3e7f5730-6ae2-4f9e-8272-9eeb26db72ea', 'hmac-generated', 'pdz', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'pdz', NULL),
('40ca426e-eb84-428a-9a23-030bf411425b', 'Full Scope Disabled', 'master', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('4af48be1-0306-4da0-8f6a-deb20da44c36', 'Allowed Protocol Mapper Types', 'master', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'authenticated'),
('4fa58485-75d8-44f4-98d6-110dc27084de', 'Allowed Protocol Mapper Types', 'pdz', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'pdz', 'authenticated'),
('5cc1e661-3ff8-4f3a-8fef-80e15815e451', 'rsa-generated', 'pdz', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'pdz', NULL),
('672ddecf-c37d-48fd-9790-6655f8b31022', 'hmac-generated', 'master', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL),
('74c302c0-a4f0-4c8a-b4d6-cb5ac6e547a9', 'Max Clients Limit', 'master', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('8bedb7d4-0e05-4eae-b1ef-778ae21e7a37', 'Allowed Protocol Mapper Types', 'master', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('901ddbe3-11c2-4198-a559-fbb0ed3d4aa1', 'Allowed Client Scopes', 'pdz', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'pdz', 'anonymous'),
('902cbf11-c571-44b2-9cd8-99cc9422882f', 'aes-generated', 'pdz', 'aes-generated', 'org.keycloak.keys.KeyProvider', 'pdz', NULL),
('a3902982-7a4b-4fdc-a97e-2cf837807f8d', 'Allowed Client Scopes', 'master', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'authenticated'),
('a552f7bf-2341-4813-88c8-ae0b511548a2', 'aes-generated', 'master', 'aes-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL),
('a7c8fc86-611d-4941-b662-972cf4a231a7', 'Trusted Hosts', 'master', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('ab4950f1-4a99-43d8-8e2b-a0e4770dcd86', 'Allowed Client Scopes', 'master', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('af31db5e-39c6-4e84-8ff6-f1d5ed497d61', 'Allowed Protocol Mapper Types', 'pdz', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'pdz', 'anonymous'),
('bca8a843-ce6c-42f9-93cb-c60b2ee1e6c3', 'Max Clients Limit', 'pdz', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'pdz', 'anonymous'),
('c343d633-623f-42f6-aa20-87e2bd00cd91', 'Trusted Hosts', 'pdz', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'pdz', 'anonymous'),
('c34cae90-f51f-4bfc-8eae-a9da2d26229a', 'Consent Required', 'master', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous'),
('d05fdfbe-0823-4f32-99d9-a180128c0d78', 'rsa-generated', 'master', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL),
('d4cd0ede-1813-4283-b079-ae7b9aa4d5b7', 'Consent Required', 'pdz', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'pdz', 'anonymous');

-- --------------------------------------------------------

--
-- Estrutura para tabela `COMPONENT_CONFIG`
--

CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `COMPONENT_CONFIG`
--

INSERT INTO `COMPONENT_CONFIG` (`ID`, `COMPONENT_ID`, `NAME`, `VALUE`) VALUES
('0534ab56-4f4d-4617-aa72-52672ca799bd', '4fa58485-75d8-44f4-98d6-110dc27084de', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('0dde9a25-9466-4328-8190-b3c0ef09b910', 'af31db5e-39c6-4e84-8ff6-f1d5ed497d61', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('0fa62b03-e46a-4b98-8170-6c61dd6a56bd', 'a3902982-7a4b-4fdc-a97e-2cf837807f8d', 'allow-default-scopes', 'true'),
('1102210c-25eb-4aba-9f76-21e84b5ebef9', 'bca8a843-ce6c-42f9-93cb-c60b2ee1e6c3', 'max-clients', '200'),
('11e94a9e-c486-4d57-99c1-32a92bcb83de', 'a7c8fc86-611d-4941-b662-972cf4a231a7', 'host-sending-registration-request-must-match', 'true'),
('169310dd-91d7-4d4d-8756-6cce9d9935b0', '3e7f5730-6ae2-4f9e-8272-9eeb26db72ea', 'kid', '2585cb78-d9f3-44e1-b7c3-b8ed486c3d0e'),
('185c0f53-8d74-4a2c-b82a-e33f91593763', 'ab4950f1-4a99-43d8-8e2b-a0e4770dcd86', 'allow-default-scopes', 'true'),
('1ec093d9-fbe2-4db3-86fe-3aafee3440cd', '8bedb7d4-0e05-4eae-b1ef-778ae21e7a37', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('21b33178-39df-4d57-bdc1-7b208dc103be', 'a552f7bf-2341-4813-88c8-ae0b511548a2', 'secret', 'jKooPOTzVIgmpvknImUEiQ'),
('3592310a-ef49-4139-9101-27e1c9ddd100', '902cbf11-c571-44b2-9cd8-99cc9422882f', 'kid', '94122c43-66df-4dda-8742-50d60686b60e'),
('39b73cd9-c555-4d13-9aea-757b2ccbd558', '4af48be1-0306-4da0-8f6a-deb20da44c36', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('43287f35-e0ed-43e6-a1f3-eabe2da32922', '672ddecf-c37d-48fd-9790-6655f8b31022', 'priority', '100'),
('43fb5e5a-ea2f-48fb-bd2d-91d2a480c199', '8bedb7d4-0e05-4eae-b1ef-778ae21e7a37', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('48c65eea-0962-4cb3-8231-bf74738a6110', '5cc1e661-3ff8-4f3a-8fef-80e15815e451', 'priority', '100'),
('4acfecea-900b-4a5c-ae44-368525c9cb6b', '8bedb7d4-0e05-4eae-b1ef-778ae21e7a37', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('52dafedb-2f4e-4f98-ba79-a620e9876e2e', 'd05fdfbe-0823-4f32-99d9-a180128c0d78', 'privateKey', 'MIIEogIBAAKCAQEAkKslDoEkSRTtBxzQj4gM5UfyQHRbkjHZR8gxBCQqiZZLv3Eel+N9DpfdfEpw9b/mXei+nMO3Up+rYE/RRoV3ZUz5iGnn3jt7oD8fzeLuHhJrHAjr8iErIl437+S1/cj7y/2/Ngw65udKoaRiaCih8QufwL+LR+6UqfKEmVzl2JIP2g+35GcbZ4aAZnQ3bZopZ760VPuSgnoacTx+ZTdRWldixMigx7q9PJsbIh+54BCkIwKhZnz4nk0Hsn5BtnEXQse8WL6twtdaQN3otzXYbM3V81HO1yhCeWLpnqiXGwnUzrqzue22rW6WRWIvtNoZEuqH6WLF1vJ9/I3NcG2BlQIDAQABAoIBACerdo7ipMORhGml4h7prLeWofxAq/eLycwgPiinji6KUx0c9MmrrNg6lpaFhzIsPAxWTSaJmJSEiibv3DAdWx8hG2/nsphC8WSAysTXTHpcjJh0bdbId56F/Yq/yZPc8AcA/tTgR6qXk+R9QirTsYx6poThQV0pNATiJrAzRCe9hAPA8M1eYvVFbHCgKnqg39OVWo/o8jwwyMaJg/DF/4mEOIUArJythKsjA9GJLGGBKqiRhlbCQ3U+sxnnp0Uyo2ZvzG1NLVaPv7XNfKyTvF2ndVmMXyM0jYLF7xDW3NghehdS0ig+diy1/0TtV4iZmYm7Ko68KBZ5w7AFmkSMfOUCgYEAymvOVlBwnW8vvXh1eX0cQPu104pP1N1cpLRnltvozhhiySI01cJlNOZkg7SqgD1gx6kdAZwel4AX1XsOacJtAIL4eJRxOBBNZPw6F2+TZqlxzjlc/llIMcRwVzWNU2Fzt+9sMcn/bOs/xBOtVRvI6wPK/5onHsBOrA6KakMNGycCgYEAtvX76e2pel70qLfE8qKfZ/PYeI5V1yCtbA+BqcA8qLq3GmwocmktOmC7Dtnrt7lfKPZXFpr+sQMN44gnTf2looWWNvkkwI889YRFMbukMoXzeHZshWWtV51Z6KAmn1mZC0vtZ9bSbs7JlLaMWSrHced0X2JwiIYGaJb4mYU64uMCgYBwzcc9HrLDaXTnV7vPqkMWi692Zbu7WmkIeGjKD18bi0dx4xgij6Sq6EHXi9UAhjPq0HmTrhb2QrIFjAAqO+lWwaYKPF8j6SHYRx9wdANm0MLVM+545/Rtl5UrZHKPpt1AAbL/xBwN7MOqV3Te2w8KuSBldNicMHsnMys7sIYbPQKBgCBtAiOYcmP0tkm8oBQcjEHhLqlXGJGTAglXyjQqlNWWmeL97kEwsMpa4GwmZSdfnCTnW9Hu0FrQ3sJHnCevX46pPFEr4L6b5ELjGVxSFCy8HsVnv534wjr38TpQP+gX+g7NexrfMNZgoctQexlGgqiGS9Kn4KfhkPsyXobe3OvfAoGAJSECsR0mylseV9QQoqhJ8x5m+q630Z7jfHiMGtq9pZAALr5IIZmxDbbTLAegN+q6zBWWHMDLVfYJL6n2mLhmTdJMty5Z78p8lPAQ1dtTcj9cq+6mrDgjD/GZ1dALDUH16n1K34LXVxnD57FKrCLmZgLHHJJqa6zJhqusLCY1zaA='),
('58294714-c652-437c-a1c7-d21ec2284627', '672ddecf-c37d-48fd-9790-6655f8b31022', 'secret', 'mUfEq3srm-BgebUfw-2Jbq2skNI8ZKcwnMwEcyY0wu7_kWq7Aha0f8X2HPHZjeLg_4_dd1RNChv9vEA-GNV6SQ'),
('5dcc5213-d957-4cf6-9132-fa29a72db92d', '8bedb7d4-0e05-4eae-b1ef-778ae21e7a37', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('5fca7ebe-42cb-4922-9425-cc1f4c2976ea', '8bedb7d4-0e05-4eae-b1ef-778ae21e7a37', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('65731e79-3341-42e3-a3eb-3e3303d96818', '4fa58485-75d8-44f4-98d6-110dc27084de', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('673b0225-63d0-4507-9469-9f6a7907f598', '4af48be1-0306-4da0-8f6a-deb20da44c36', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('6b89c760-9ac0-41fd-b6ee-087d9a2e354e', '4af48be1-0306-4da0-8f6a-deb20da44c36', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('6e0a2678-631e-4d5e-b506-eeacb381a81a', 'd05fdfbe-0823-4f32-99d9-a180128c0d78', 'certificate', 'MIICmzCCAYMCBgGI/XgDLzANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMwNjI3MTUyNjIwWhcNMzMwNjI3MTUyODAwWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCQqyUOgSRJFO0HHNCPiAzlR/JAdFuSMdlHyDEEJCqJlku/cR6X430Ol918SnD1v+Zd6L6cw7dSn6tgT9FGhXdlTPmIaefeO3ugPx/N4u4eEmscCOvyISsiXjfv5LX9yPvL/b82DDrm50qhpGJoKKHxC5/Av4tH7pSp8oSZXOXYkg/aD7fkZxtnhoBmdDdtmilnvrRU+5KCehpxPH5lN1FaV2LEyKDHur08mxsiH7ngEKQjAqFmfPieTQeyfkG2cRdCx7xYvq3C11pA3ei3NdhszdXzUc7XKEJ5YumeqJcbCdTOurO57batbpZFYi+02hkS6ofpYsXW8n38jc1wbYGVAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAE05Wzu/2Yc9QAFkDUKqgwkZXZlD+fugadVeQBh+DegSUaN2OHP2Qqm3dqPF+PRMWi3UjYaPIHuk0fgBz6DaiK6NGoHx4J87t2cEVAZmWOP0oogQj+u0ADdteyczh6hm4q39c/RsAis5zsrkyFEn6P07CDYWL6uPeODB/+AATS1tX1PrSzj0ze8cxFw9i9vLT7jRzH/H8biVyQ8KGs0uU7kpfX+DIhJvbicWFDx6IO1YJPEtwfpY22gZYkeGq2qImQzoNgcHazPHfYzQ+4Z/LES+T2+Elc22MLmIVoSMR8s4txOBQTN+/kSNLq1qgWYYZHtk+IWwdOV95OSLrzw50K0='),
('72306550-d96b-406d-8920-9e9392ad5714', '5cc1e661-3ff8-4f3a-8fef-80e15815e451', 'certificate', 'MIIClTCCAX0CBgGI/YYgmDANBgkqhkiG9w0BAQsFADAOMQwwCgYDVQQDDANwZHowHhcNMjMwNjI3MTU0MTQ1WhcNMzMwNjI3MTU0MzI1WjAOMQwwCgYDVQQDDANwZHowggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDdE2nGWmBtAs7cUFzNSz5qGL8C9g8ylmT27+AdHwt9N7VKw9Cl62c0SMr3CbUFwBGtadekuzB5PvncWX9hhK8aIAR6LW/j2JC22VGcKz622OTUnRQtB5ltrDyPRUb7xdA/OL0bcJOgzVnVFw0cNf+PEhXnY1HBRBHGNnc6a8v25onXikw3G2RnagGzoNpd/yfEhc3GZGwCuBbSpKhdwxdSePskoVo+2deSc7k6hE/PUakm4kzjc5p01nc0BuJMoDZudo/XFhfCcQcPQrjeWcejze/6dtHRhw3dUy3dHZRTi3XFLSkWBGS5QqQaP8QQ/Kd23An7w57Mrcjn4QabgdRRAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAJYkgeUrZzD53fYrUyuRcAOKk0xVl/6P/GpSVlnrH0zlKJK8jyE79d9Gg91AbHBQQS7ayyJ8h5XC/Ia4lJ2qiuKRnJF1c5GmdpWrOjy0Xn/mLIUXOL/KkJhuSxu0k2QMhHgmSDuJHhh0Ds+IWnRGNw5kq3ZDB+MwOHlsQ08GHz7LAdL+X+HACE5TNjuPLowV1My57SkJeUkXxPMkWPLxLr2cIapv/k0lgbTtYh4vCsmg2czwVCPDZGdS8gn7lJj8fbc4eyhWrzedQzpP+avWb4nL3F7V2Ac3jtiEkaedvpWVo5NTQH5rS5G5Zp76OcDeFh/Cf1xYWs0u3YD6znx650c='),
('75a1e393-7cff-4636-85b9-01692cc0b421', '74c302c0-a4f0-4c8a-b4d6-cb5ac6e547a9', 'max-clients', '200'),
('7b6f7d31-9563-45dc-9416-92edca7f2f73', '3e7f5730-6ae2-4f9e-8272-9eeb26db72ea', 'secret', 'Rz06HLAQqcMq0mTqnTw7vJ-mrBeIZb3aFU8TBiX_FQhlKYJiLSahHicIF4-fnRjmC-MOTVCKJfJ7fpWGBIgcpA'),
('7b880d3f-25e5-44e1-a35f-1232ac498b91', '4fa58485-75d8-44f4-98d6-110dc27084de', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('7d2b04e0-3e3b-4b21-a9f3-c299d17d7187', 'af31db5e-39c6-4e84-8ff6-f1d5ed497d61', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('803ab75a-5a43-484c-86b5-88978142b4d6', '672ddecf-c37d-48fd-9790-6655f8b31022', 'algorithm', 'HS256'),
('84addeb0-774f-45e6-9ce0-b8076331b293', '4af48be1-0306-4da0-8f6a-deb20da44c36', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('8c929f13-38a8-41a4-ba61-d9ad7a334ace', '4af48be1-0306-4da0-8f6a-deb20da44c36', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('8e4e4a3c-627c-4d29-8e27-8252e689c0eb', 'af31db5e-39c6-4e84-8ff6-f1d5ed497d61', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper'),
('8eec6aad-6c30-4165-b352-f9cf645941af', 'af31db5e-39c6-4e84-8ff6-f1d5ed497d61', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('9440068e-91ee-4a86-bfe4-c177e7ef0376', 'af31db5e-39c6-4e84-8ff6-f1d5ed497d61', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('9724c43b-d1a0-43bd-979d-32af8d60fc90', 'a552f7bf-2341-4813-88c8-ae0b511548a2', 'kid', '53f5b6c0-a23e-4a7d-a1fa-c5bedf2d534d'),
('9a2db573-7ff2-48c4-a946-8dfef14bb583', '4af48be1-0306-4da0-8f6a-deb20da44c36', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('9b59aaf7-1a16-4346-978d-50e5362537d9', '672ddecf-c37d-48fd-9790-6655f8b31022', 'kid', 'd9b65947-f72b-457c-aa05-5597aa1c4f6a'),
('9b681f5c-483b-4d74-a7c5-f2885063889a', '4af48be1-0306-4da0-8f6a-deb20da44c36', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('9caf7847-fa39-46ac-ac78-61e32d44a4c9', 'af31db5e-39c6-4e84-8ff6-f1d5ed497d61', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper'),
('a1e6ecd8-b443-456f-8498-ca49dc8a530b', '902cbf11-c571-44b2-9cd8-99cc9422882f', 'secret', 'sayeZU6Dbb0VfqjSQ1FuQQ'),
('a40819d9-3ba6-4a3b-b3d0-8cb35d718a2a', 'a552f7bf-2341-4813-88c8-ae0b511548a2', 'priority', '100'),
('a7f5db23-d484-4a7c-a98e-9edccbd80888', '8bedb7d4-0e05-4eae-b1ef-778ae21e7a37', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('aa4f146d-ee91-420b-abfb-c6a2df35566f', '4fa58485-75d8-44f4-98d6-110dc27084de', 'allowed-protocol-mapper-types', 'saml-user-property-mapper'),
('ae082322-d806-4daa-b981-71a01fb984aa', 'c343d633-623f-42f6-aa20-87e2bd00cd91', 'client-uris-must-match', 'true'),
('b021cfd6-e98b-410e-affe-a09277cce30e', '902cbf11-c571-44b2-9cd8-99cc9422882f', 'priority', '100'),
('b277953d-5644-490c-809f-676ea244391a', '4fa58485-75d8-44f4-98d6-110dc27084de', 'allowed-protocol-mapper-types', 'saml-role-list-mapper'),
('b771df79-83e6-4608-81f4-bc644564a824', 'af31db5e-39c6-4e84-8ff6-f1d5ed497d61', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper'),
('c0bf7e11-3abe-49aa-bb75-aa234535fd2c', 'd05fdfbe-0823-4f32-99d9-a180128c0d78', 'priority', '100'),
('c5577e63-b3fe-4d2a-9805-ee28efdabb82', 'c343d633-623f-42f6-aa20-87e2bd00cd91', 'host-sending-registration-request-must-match', 'true'),
('cde90c09-14a2-4aca-ad47-6f722275a87a', '4af48be1-0306-4da0-8f6a-deb20da44c36', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('d266c54f-d41c-4df4-bbdf-389d7e62752c', '5cc1e661-3ff8-4f3a-8fef-80e15815e451', 'privateKey', 'MIIEogIBAAKCAQEA3RNpxlpgbQLO3FBczUs+ahi/AvYPMpZk9u/gHR8LfTe1SsPQpetnNEjK9wm1BcARrWnXpLsweT753Fl/YYSvGiAEei1v49iQttlRnCs+ttjk1J0ULQeZbaw8j0VG+8XQPzi9G3CToM1Z1RcNHDX/jxIV52NRwUQRxjZ3OmvL9uaJ14pMNxtkZ2oBs6DaXf8nxIXNxmRsArgW0qSoXcMXUnj7JKFaPtnXknO5OoRPz1GpJuJM43OadNZ3NAbiTKA2bnaP1xYXwnEHD0K43lnHo83v+nbR0YcN3VMt3R2UU4t1xS0pFgRkuUKkGj/EEPyndtwJ+8OezK3I5+EGm4HUUQIDAQABAoIBADzS7YQsM2Fqp11IIvA8pnRsUIlRB4dkh2zFPITmmLOf0xo527r6lE93Q5hKLGrjmDl86F6jPcfuArKUUQ6UgdSPQIwY2jL2z4HvMpvj7gJClFrGyNlGwPjCrXrBlbEJkK0EQEs/Yu6X8QJGsE21sZU8ZZhe5AxnXPiK3azOIbTQ39i+ckl72F3poIAp1XxUF8w/BtODAcDXvahROBOmhsYRvmMZxBPilgSUgTLr3EEqvW7FRPNrSJ/YUnS9zswQLPV9blIzUUxMRejJVj83mcCJgW3t1qdM3d2MRTuAaUsGGO4cJ1vhqqtCRhSyloi7KJpqfe8hZdZ6ACa9FRwsC8ECgYEA9nx9p8jbSsIGjqQ5rTi5yJE297lRUhS1VgRGLB0+qPxbUmUMG/YFVls5Cs4vihETSHlv+t8yXJqrRD+6Dlgg/XJbm479gEaxvQjRqVpywyM317c5yoV7ZXAuA/c00+HFHtfp6OQlskN7/M9qg0WQWMWzcjEX9Za3x0RUY09jlUkCgYEA5ZvYBmHPrzHRlwML1Tdr9angQ0uW+wmarSfUu6WcbvPfx2ALRE8uaApthtVvt6FSqGIabQoWOMSA8wVVbJU69ZteztyNlqazmfjSjmSR8epbJWdTSEc9QzgAQKkMZBwzAovoSw47r0fjvWmwgYgsL33KKJmgcfgTPrFnL7IKrskCgYA6hnqrgSSYjpNSASp0t9hdCCXeEhF+BM69uswSo2sCYtEoMjf616KSy5wytZxSExXaCoONNLvXgx4RWXRK/Z/vrdyUhhIpCCAhu1tU89X2AYG75ZSCQsl233j9lg/kE2JjnW67zpgoyJ9C+tjWjIjmmyKthXyj4oKGfPHwlqQViQKBgB0nEWGWD6l92M+kql7y/3kcjYXd1hifmoz7rq34lAkeW75Tunp81zaMhGWHOf0FtZn9gr9vdWzVvk2c0sDLncXLaVk4dZ24Iruc9RbxO/qMN/Bi0xctPGEJfja3gARB9FQRcXf+IaPaq9bD0Y5QvNN21DEdeFqgFcly+tf6chLJAoGAOA9Z4OQwSCcyPfq9y0cFXkntkNkC01E0vnHNc/5D51j9T48X/+IEDATN8OEE6YAB/H3SD1h9qrzbRXBMN6Dtp0EnTCYu7IdyZr03EBLPKRzR6N3rFfHAHmNP8rqAnP/DcJCTbhGTorwxu8n8KRPfD0ZmmKGwhwpMN/PlzjeI+5c='),
('d33f5762-4422-47e8-9623-c59604f318a4', '3e7f5730-6ae2-4f9e-8272-9eeb26db72ea', 'priority', '100'),
('d36b356c-b726-4418-8c89-f1778a207930', '3e7f5730-6ae2-4f9e-8272-9eeb26db72ea', 'algorithm', 'HS256'),
('dd680eaa-c92d-45ed-9e9f-fe66d8fde570', '8bedb7d4-0e05-4eae-b1ef-778ae21e7a37', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('ded65811-f7db-4c4d-9c16-370ecbf09198', '4fa58485-75d8-44f4-98d6-110dc27084de', 'allowed-protocol-mapper-types', 'oidc-address-mapper'),
('e3b2830a-e564-4027-830b-36d88fa25fa0', '18c2e90d-61c1-455f-bd35-882b42433557', 'allow-default-scopes', 'true'),
('e3dfa59a-1989-4cf4-889f-2c7edfd29643', '901ddbe3-11c2-4198-a559-fbb0ed3d4aa1', 'allow-default-scopes', 'true'),
('e405101a-8aed-4ecb-be2c-e442b18059d1', 'a7c8fc86-611d-4941-b662-972cf4a231a7', 'client-uris-must-match', 'true'),
('e61ed7df-f87b-4e2b-9d11-4fc9e7e5ac89', '4fa58485-75d8-44f4-98d6-110dc27084de', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper'),
('f12aaa35-17c0-4a9b-a933-e2850c7e0f73', 'af31db5e-39c6-4e84-8ff6-f1d5ed497d61', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('f2184ace-f09d-413f-8c47-b274435d78db', '4fa58485-75d8-44f4-98d6-110dc27084de', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper'),
('f47595d0-796c-4d41-b016-afef8f029a25', '8bedb7d4-0e05-4eae-b1ef-778ae21e7a37', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');

-- --------------------------------------------------------

--
-- Estrutura para tabela `COMPOSITE_ROLE`
--

CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `COMPOSITE_ROLE`
--

INSERT INTO `COMPOSITE_ROLE` (`COMPOSITE`, `CHILD_ROLE`) VALUES
('431782fc-fa38-4841-82f4-e63326fd239e', '2faa9a28-1c5b-46dd-8259-65bd87657ac3'),
('431782fc-fa38-4841-82f4-e63326fd239e', '5bdf874d-e5f2-4cfb-86a5-1dd95d64b163'),
('431782fc-fa38-4841-82f4-e63326fd239e', '77f974e7-2c0b-4376-b8f2-85af431a3781'),
('431782fc-fa38-4841-82f4-e63326fd239e', 'dbc9e856-caf3-4b06-808d-aa7f057dbd50'),
('4ccb0025-203e-4948-a5ab-68a66c265b6c', 'f890ff6f-8c01-4e40-a139-744589380b1b'),
('5bdf874d-e5f2-4cfb-86a5-1dd95d64b163', '1f194f5d-27c4-4b12-8bb6-f3ae7466c5ca'),
('6f694763-cdad-4880-a461-6760eae7a5f3', 'ba01f20a-64a8-4f28-b833-db5b695f1733'),
('72021b32-9bc4-471b-8e03-d33134588874', '167e8d7e-1839-4b27-9680-5e2ca3f2c225'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '196cf0fc-5239-448b-a678-13f9d1f4cb1f'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '1a802ec7-4562-432a-9ab9-52d61fc257d3'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '3d744e46-972f-48c9-8a98-bf56dfa6a19b'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '45d6c33c-ad57-453e-b736-8f3ad348787c'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '47b8b078-9c20-4a63-bfb8-d2bb041feda1'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '6919b357-d796-406d-b9d6-1eb40953397e'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '6c774609-8ab9-474d-9cc7-e4f3c915462d'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '7169c54a-0f15-41a0-b167-c3f373a5e7c2'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '78719fbe-c974-4839-872d-63c0266b35e3'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '7cfec401-352e-41f7-8667-6eaa921b3bc5'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '87e77691-b88b-494b-964f-64d58bc95837'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', '9934835f-1944-4d65-80b9-6bfd57f6dbe5'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', 'a0af7a89-4b01-4e87-9100-49509f2e8e01'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', 'c05ff153-fd08-47f5-a7ed-c076ca19b3e6'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', 'cfe68bca-5465-4f29-bcb0-3b3afcf940da'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', 'dfa0a41f-db2c-420b-8520-8d5835ace83a'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', 'e562d9e3-51ee-441f-a849-1dcb2aeb6f7a'),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', 'f1352930-50fc-4231-932b-99cb3676627d'),
('7ee5edad-4704-40b8-9c51-7a857b6595f7', '72021b32-9bc4-471b-8e03-d33134588874'),
('7ee5edad-4704-40b8-9c51-7a857b6595f7', 'b6b03b38-7837-479a-b6ef-3b43ef346ba9'),
('7ee5edad-4704-40b8-9c51-7a857b6595f7', 'e0eb3433-8e6c-4768-a6bc-de7bdf3a1117'),
('7ee5edad-4704-40b8-9c51-7a857b6595f7', 'f0b2357f-055f-4808-b919-1ca23d43d8cf'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '199a6630-4f9b-49e0-97fc-b5235653dec7'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '2f01af0b-f487-4349-abdc-57d0e02c18ff'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '31fe7ed1-d9e8-42da-bca2-9bf48ca08b74'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '37aad3f9-521b-4e4a-a937-3289041ea42e'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '399e502f-f033-43d3-a326-bbba0d834945'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '39a37fb0-76bf-4a6d-a80c-5a9871ea19cd'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '40043d6d-107d-4a93-8987-e6b7bcc35bfb'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '407c57f2-54b9-4654-ac56-d009c36826c6'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '465a5a0c-d444-43f8-ace7-dcdc713140a9'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '4690849b-ac83-46db-b7bd-a493bfc5dcec'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '56182c32-d6e4-4a95-b631-89d92afeca2a'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '5d86291f-15ac-437b-a20d-51822b5e79cd'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '6f694763-cdad-4880-a461-6760eae7a5f3'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '84c79974-fbcf-411a-85d7-0e1c267227d8'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '902c97fd-870b-4336-9a63-f8a3a49d4875'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '9a02f543-bc2a-4464-8d51-674a8e1bc3d2'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', '9c46cc19-d45b-4a86-8d3f-f9db0f317587'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'a11d06a5-258e-4b03-b8e8-4e06cb6001b3'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'ad9f492a-0441-4c31-b12e-fa35e96a7658'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'b1c1dd0a-b43f-41c2-b596-2604e84e060f'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'b447ffd9-db71-41d5-b2f9-adfcfec26e33'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'ba01f20a-64a8-4f28-b833-db5b695f1733'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'bac0b226-286e-480a-8224-331ed2541ac9'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'bde6547d-2158-4087-9760-3825c3578bdb'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'c15e33a8-2def-40e3-84db-74f8fa0e3daa'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'c2a147df-0600-4b6b-9295-567816d73d08'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'c9b807be-3b13-40fc-8da1-df569b3401e5'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'cac7f405-0d88-4e3d-b685-aa3a0dfcebb8'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'd483e8a3-0839-42aa-9e8d-06e25d64c50c'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'd488ca5f-d27c-4276-93b9-2122e02e144c'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'ddf850d7-dc6e-4553-838e-2c1baae32933'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'decb40da-5161-42d8-8316-a713ae82c574'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'e3b20674-c89b-4c96-99ac-2d4c258351e5'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'e598e278-d158-4626-9f3f-7ac6704afd2f'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'e690efae-33d3-4b9b-a625-a284eee08d88'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'e83d66ba-e877-42ff-9669-d1547abf370e'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'f2b95903-c0c9-45a1-b9b9-be7240a173c6'),
('b447ffd9-db71-41d5-b2f9-adfcfec26e33', '31fe7ed1-d9e8-42da-bca2-9bf48ca08b74'),
('b447ffd9-db71-41d5-b2f9-adfcfec26e33', '407c57f2-54b9-4654-ac56-d009c36826c6'),
('c05ff153-fd08-47f5-a7ed-c076ca19b3e6', '6c774609-8ab9-474d-9cc7-e4f3c915462d'),
('d488ca5f-d27c-4276-93b9-2122e02e144c', '39a37fb0-76bf-4a6d-a80c-5a9871ea19cd'),
('e690efae-33d3-4b9b-a625-a284eee08d88', '37aad3f9-521b-4e4a-a937-3289041ea42e'),
('e690efae-33d3-4b9b-a625-a284eee08d88', 'decb40da-5161-42d8-8316-a713ae82c574'),
('f1352930-50fc-4231-932b-99cb3676627d', '78719fbe-c974-4839-872d-63c0266b35e3'),
('f1352930-50fc-4231-932b-99cb3676627d', 'e562d9e3-51ee-441f-a849-1dcb2aeb6f7a'),
('fe355692-e914-4c10-a27b-f04b94a6ba55', '7735e986-0d2f-4e6e-92da-50cddfe5e897');

-- --------------------------------------------------------

--
-- Estrutura para tabela `CREDENTIAL`
--

CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `CREDENTIAL`
--

INSERT INTO `CREDENTIAL` (`ID`, `SALT`, `TYPE`, `USER_ID`, `CREATED_DATE`, `USER_LABEL`, `SECRET_DATA`, `CREDENTIAL_DATA`, `PRIORITY`) VALUES
('062d6943-5c00-4421-9228-b1f7b379eb6f', NULL, 'password', 'fd3b852d-3bc4-4c91-aaf5-f8437dc32878', 1687879681331, NULL, '{\"value\":\"xfqUypjKUaWDJAsAXV0WhXI/Wdp3kZshKpKSgy2t/J50+/AQH92/3NoL/YznmaG2llpTA02tke3pg5PszdezIA==\",\"salt\":\"Ql6bp3HWknN9F+evgcdKeQ==\",\"additionalParameters\":{}}', '{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}', 10),
('705a7b10-e062-421b-bf35-524b6dd57ebc', NULL, 'password', '036652fd-9ce6-45db-95af-7e076d55cf11', 1687881725883, NULL, '{\"value\":\"Zmb6lGyRXAdmWIuWpEFet6S+nmY0Vk54T7XyjmpFeI0TG66HKGL675Yb1QF7wfKievCih6GiMtJ1+DgWE5OMqg==\",\"salt\":\"2CLs6/0A2VTnk7E7fuRYog==\",\"additionalParameters\":{}}', '{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}', 10),
('f6586a9b-31d9-46e5-9eb1-761f7827d3c8', NULL, 'password', '8cfaf64f-1b16-46db-82b9-152752959338', 1687881770770, NULL, '{\"value\":\"Cf0sI+anGSkSPJlZm0P291MO9FmF9At194GLPZEFsA24udx9dCiu8Il1319/rFp65Oct5R2TXjRpYOkvu7PEpA==\",\"salt\":\"ou6KeEi57LpEYge8VE2jTg==\",\"additionalParameters\":{}}', '{\"hashIterations\":27500,\"algorithm\":\"pbkdf2-sha256\",\"additionalParameters\":{}}', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `DATABASECHANGELOG`
--

CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `DATABASECHANGELOG`
--

INSERT INTO `DATABASECHANGELOG` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`, `DEPLOYMENT_ID`) VALUES
('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.0.0.Final.xml', '2023-06-27 15:12:13', 1, 'EXECUTED', '7:4e70412f24a3f382c82183742ec79317', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/db2-jpa-changelog-1.0.0.Final.xml', '2023-06-27 15:12:13', 2, 'MARK_RAN', '7:cb16724583e9675711801c6875114f28', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.1.0.Beta1', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Beta1.xml', '2023-06-27 15:12:24', 3, 'EXECUTED', '7:0310eb8ba07cec616460794d42ade0fa', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.1.0.Final', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Final.xml', '2023-06-27 15:12:24', 4, 'EXECUTED', '7:5d25857e708c3233ef4439df1f93f012', 'renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/jpa-changelog-1.2.0.Beta1.xml', '2023-06-27 15:12:54', 5, 'EXECUTED', '7:c7a54a1041d58eb3817a4a883b4d4e84', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.Beta1.xml', '2023-06-27 15:12:54', 6, 'MARK_RAN', '7:2e01012df20974c1c2a605ef8afe25b7', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.2.0.CR1.xml', '2023-06-27 15:13:20', 7, 'EXECUTED', '7:0f08df48468428e0f30ee59a8ec01a41', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.CR1.xml', '2023-06-27 15:13:20', 8, 'MARK_RAN', '7:a77ea2ad226b345e7d689d366f185c8c', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.2.0.Final', 'keycloak', 'META-INF/jpa-changelog-1.2.0.Final.xml', '2023-06-27 15:13:21', 9, 'EXECUTED', '7:a3377a2059aefbf3b90ebb4c4cc8e2ab', 'update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.3.0.xml', '2023-06-27 15:13:52', 10, 'EXECUTED', '7:04c1dbedc2aa3e9756d1a1668e003451', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.4.0.xml', '2023-06-27 15:14:07', 11, 'EXECUTED', '7:36ef39ed560ad07062d956db861042ba', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.4.0', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.4.0.xml', '2023-06-27 15:14:07', 12, 'MARK_RAN', '7:d909180b2530479a716d3f9c9eaea3d7', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.5.0.xml', '2023-06-27 15:14:10', 13, 'EXECUTED', '7:cf12b04b79bea5152f165eb41f3955f6', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.6.1_from15', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2023-06-27 15:14:16', 14, 'EXECUTED', '7:7e32c8f05c755e8675764e7d5f514509', 'addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.6.1_from16-pre', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2023-06-27 15:14:16', 15, 'MARK_RAN', '7:980ba23cc0ec39cab731ce903dd01291', 'delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.6.1_from16', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2023-06-27 15:14:16', 16, 'MARK_RAN', '7:2fa220758991285312eb84f3b4ff5336', 'dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.6.1', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2023-06-27 15:14:16', 17, 'EXECUTED', '7:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.7.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.7.0.xml', '2023-06-27 15:14:33', 18, 'EXECUTED', '7:91ace540896df890cc00a0490ee52bbc', 'createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.8.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.8.0.xml', '2023-06-27 15:14:48', 19, 'EXECUTED', '7:c31d1646dfa2618a9335c00e07f89f24', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.8.0-2', 'keycloak', 'META-INF/jpa-changelog-1.8.0.xml', '2023-06-27 15:14:48', 20, 'EXECUTED', '7:df8bc21027a4f7cbbb01f6344e89ce07', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.8.0', 'mposolda@redhat.com', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2023-06-27 15:14:48', 21, 'MARK_RAN', '7:f987971fe6b37d963bc95fee2b27f8df', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.8.0-2', 'keycloak', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2023-06-27 15:14:49', 22, 'MARK_RAN', '7:df8bc21027a4f7cbbb01f6344e89ce07', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.9.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.9.0.xml', '2023-06-27 15:14:52', 23, 'EXECUTED', '7:ed2dc7f799d19ac452cbcda56c929e47', 'update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.9.1', 'keycloak', 'META-INF/jpa-changelog-1.9.1.xml', '2023-06-27 15:14:52', 24, 'EXECUTED', '7:80b5db88a5dda36ece5f235be8757615', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.9.1', 'keycloak', 'META-INF/db2-jpa-changelog-1.9.1.xml', '2023-06-27 15:14:52', 25, 'MARK_RAN', '7:1437310ed1305a9b93f8848f301726ce', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('1.9.2', 'keycloak', 'META-INF/jpa-changelog-1.9.2.xml', '2023-06-27 15:14:57', 26, 'EXECUTED', '7:b82ffb34850fa0836be16deefc6a87c4', 'createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('authz-2.0.0', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.0.0.xml', '2023-06-27 15:15:23', 27, 'EXECUTED', '7:9cc98082921330d8d9266decdd4bd658', 'createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('authz-2.5.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.5.1.xml', '2023-06-27 15:15:23', 28, 'EXECUTED', '7:03d64aeed9cb52b969bd30a7ac0db57e', 'update tableName=RESOURCE_SERVER_POLICY', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('2.1.0-KEYCLOAK-5461', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.1.0.xml', '2023-06-27 15:15:38', 29, 'EXECUTED', '7:f1f9fd8710399d725b780f463c6b21cd', 'createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('2.2.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.2.0.xml', '2023-06-27 15:15:43', 30, 'EXECUTED', '7:53188c3eb1107546e6f765835705b6c1', 'addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('2.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.3.0.xml', '2023-06-27 15:15:51', 31, 'EXECUTED', '7:d6e6f3bc57a0c5586737d1351725d4d4', 'createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('2.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.4.0.xml', '2023-06-27 15:15:51', 32, 'EXECUTED', '7:454d604fbd755d9df3fd9c6329043aa5', 'customChange', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('2.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2023-06-27 15:15:51', 33, 'EXECUTED', '7:57e98a3077e29caf562f7dbf80c72600', 'customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('2.5.0-unicode-oracle', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2023-06-27 15:15:51', 34, 'MARK_RAN', '7:e4c7e8f2256210aee71ddc42f538b57a', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '3.5.4', NULL, NULL, '7878669757'),
('2.5.0-unicode-other-dbs', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2023-06-27 15:24:43', 35, 'EXECUTED', '7:09a43c97e49bc626460480aa1379b522', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('2.5.0-duplicate-email-support', 'slawomir@dabek.name', 'META-INF/jpa-changelog-2.5.0.xml', '2023-06-27 15:24:44', 36, 'EXECUTED', '7:26bfc7c74fefa9126f2ce702fb775553', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('2.5.0-unique-group-names', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2023-06-27 15:24:44', 37, 'EXECUTED', '7:a161e2ae671a9020fff61e996a207377', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('2.5.1', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.1.xml', '2023-06-27 15:24:45', 38, 'EXECUTED', '7:37fc1781855ac5388c494f1442b3f717', 'addColumn tableName=FED_USER_CONSENT', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.0.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-3.0.0.xml', '2023-06-27 15:24:46', 39, 'EXECUTED', '7:13a27db0dae6049541136adad7261d27', 'addColumn tableName=IDENTITY_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.2.0-fix', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2023-06-27 15:24:46', 40, 'MARK_RAN', '7:550300617e3b59e8af3a6294df8248a3', 'addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.2.0-fix-with-keycloak-5416', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2023-06-27 15:24:46', 41, 'MARK_RAN', '7:e3a9482b8931481dc2772a5c07c44f17', 'dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.2.0-fix-offline-sessions', 'hmlnarik', 'META-INF/jpa-changelog-3.2.0.xml', '2023-06-27 15:24:46', 42, 'EXECUTED', '7:72b07d85a2677cb257edb02b408f332d', 'customChange', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.2.0-fixed', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2023-06-27 15:25:14', 43, 'EXECUTED', '7:a72a7858967bd414835d19e04d880312', 'addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.3.0', 'keycloak', 'META-INF/jpa-changelog-3.3.0.xml', '2023-06-27 15:25:15', 44, 'EXECUTED', '7:94edff7cf9ce179e7e85f0cd78a3cf2c', 'addColumn tableName=USER_ENTITY', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authz-3.4.0.CR1-resource-server-pk-change-part1', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2023-06-27 15:25:18', 45, 'EXECUTED', '7:6a48ce645a3525488a90fbf76adf3bb3', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2023-06-27 15:25:18', 46, 'EXECUTED', '7:e64b5dcea7db06077c6e57d3b9e5ca14', 'customChange', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2023-06-27 15:25:18', 47, 'MARK_RAN', '7:fd8cf02498f8b1e72496a20afc75178c', 'dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2023-06-27 15:25:35', 48, 'EXECUTED', '7:542794f25aa2b1fbabb7e577d6646319', 'addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authn-3.4.0.CR1-refresh-token-max-reuse', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2023-06-27 15:25:36', 49, 'EXECUTED', '7:edad604c882df12f74941dac3cc6d650', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.4.0', 'keycloak', 'META-INF/jpa-changelog-3.4.0.xml', '2023-06-27 15:25:53', 50, 'EXECUTED', '7:0f88b78b7b46480eb92690cbf5e44900', 'addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.4.0-KEYCLOAK-5230', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-3.4.0.xml', '2023-06-27 15:25:58', 51, 'EXECUTED', '7:d560e43982611d936457c327f872dd59', 'createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.4.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-3.4.1.xml', '2023-06-27 15:25:58', 52, 'EXECUTED', '7:c155566c42b4d14ef07059ec3b3bbd8e', 'modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.4.2', 'keycloak', 'META-INF/jpa-changelog-3.4.2.xml', '2023-06-27 15:25:59', 53, 'EXECUTED', '7:b40376581f12d70f3c89ba8ddf5b7dea', 'update tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('3.4.2-KEYCLOAK-5172', 'mkanis@redhat.com', 'META-INF/jpa-changelog-3.4.2.xml', '2023-06-27 15:25:59', 54, 'EXECUTED', '7:a1132cc395f7b95b3646146c2e38f168', 'update tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.0.0-KEYCLOAK-6335', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2023-06-27 15:26:00', 55, 'EXECUTED', '7:d8dc5d89c789105cfa7ca0e82cba60af', 'createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.0.0-CLEANUP-UNUSED-TABLE', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2023-06-27 15:26:00', 56, 'EXECUTED', '7:7822e0165097182e8f653c35517656a3', 'dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.0.0-KEYCLOAK-6228', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2023-06-27 15:26:09', 57, 'EXECUTED', '7:c6538c29b9c9a08f9e9ea2de5c2b6375', 'dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.0.0-KEYCLOAK-5579-fixed', 'mposolda@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2023-06-27 15:26:48', 58, 'EXECUTED', '7:6d4893e36de22369cf73bcb051ded875', 'dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authz-4.0.0.CR1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.CR1.xml', '2023-06-27 15:27:01', 59, 'EXECUTED', '7:57960fc0b0f0dd0563ea6f8b2e4a1707', 'createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authz-4.0.0.Beta3', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.Beta3.xml', '2023-06-27 15:27:04', 60, 'EXECUTED', '7:2b4b8bff39944c7097977cc18dbceb3b', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authz-4.2.0.Final', 'mhajas@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2023-06-27 15:27:07', 61, 'EXECUTED', '7:2aa42a964c59cd5b8ca9822340ba33a8', 'createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authz-4.2.0.Final-KEYCLOAK-9944', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2023-06-27 15:27:08', 62, 'EXECUTED', '7:9ac9e58545479929ba23f4a3087a0346', 'addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.2.0-KEYCLOAK-6313', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.2.0.xml', '2023-06-27 15:27:10', 63, 'EXECUTED', '7:14d407c35bc4fe1976867756bcea0c36', 'addColumn tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.3.0-KEYCLOAK-7984', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.3.0.xml', '2023-06-27 15:27:10', 64, 'EXECUTED', '7:241a8030c748c8548e346adee548fa93', 'update tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.6.0-KEYCLOAK-7950', 'psilva@redhat.com', 'META-INF/jpa-changelog-4.6.0.xml', '2023-06-27 15:27:10', 65, 'EXECUTED', '7:7d3182f65a34fcc61e8d23def037dc3f', 'update tableName=RESOURCE_SERVER_RESOURCE', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.6.0-KEYCLOAK-8377', 'keycloak', 'META-INF/jpa-changelog-4.6.0.xml', '2023-06-27 15:27:13', 66, 'EXECUTED', '7:b30039e00a0b9715d430d1b0636728fa', 'createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.6.0-KEYCLOAK-8555', 'gideonray@gmail.com', 'META-INF/jpa-changelog-4.6.0.xml', '2023-06-27 15:27:14', 67, 'EXECUTED', '7:3797315ca61d531780f8e6f82f258159', 'createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.7.0-KEYCLOAK-1267', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.7.0.xml', '2023-06-27 15:27:15', 68, 'EXECUTED', '7:c7aa4c8d9573500c2d347c1941ff0301', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.7.0-KEYCLOAK-7275', 'keycloak', 'META-INF/jpa-changelog-4.7.0.xml', '2023-06-27 15:27:17', 69, 'EXECUTED', '7:b207faee394fc074a442ecd42185a5dd', 'renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('4.8.0-KEYCLOAK-8835', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.8.0.xml', '2023-06-27 15:27:19', 70, 'EXECUTED', '7:ab9a9762faaba4ddfa35514b212c4922', 'addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('authz-7.0.0-KEYCLOAK-10443', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-7.0.0.xml', '2023-06-27 15:27:20', 71, 'EXECUTED', '7:b9710f74515a6ccb51b72dc0d19df8c4', 'addColumn tableName=RESOURCE_SERVER', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('8.0.0-adding-credential-columns', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2023-06-27 15:27:22', 72, 'EXECUTED', '7:ec9707ae4d4f0b7452fee20128083879', 'addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('8.0.0-updating-credential-data-not-oracle', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2023-06-27 15:27:22', 73, 'EXECUTED', '7:03b3f4b264c3c68ba082250a80b74216', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('8.0.0-updating-credential-data-oracle', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2023-06-27 15:27:22', 74, 'MARK_RAN', '7:64c5728f5ca1f5aa4392217701c4fe23', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('8.0.0-credential-cleanup-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2023-06-27 15:27:36', 75, 'EXECUTED', '7:b48da8c11a3d83ddd6b7d0c8c2219345', 'dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('8.0.0-resource-tag-support', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2023-06-27 15:27:38', 76, 'EXECUTED', '7:a73379915c23bfad3e8f5c6d5c0aa4bd', 'addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('9.0.0-always-display-client', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2023-06-27 15:27:39', 77, 'EXECUTED', '7:39e0073779aba192646291aa2332493d', 'addColumn tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('9.0.0-drop-constraints-for-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2023-06-27 15:27:39', 78, 'MARK_RAN', '7:81f87368f00450799b4bf42ea0b3ec34', 'dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('9.0.0-increase-column-size-federated-fk', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2023-06-27 15:27:43', 79, 'EXECUTED', '7:20b37422abb9fb6571c618148f013a15', 'modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('9.0.0-recreate-constraints-after-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2023-06-27 15:27:43', 80, 'MARK_RAN', '7:1970bb6cfb5ee800736b95ad3fb3c78a', 'addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('9.0.1-add-index-to-client.client_id', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2023-06-27 15:27:44', 81, 'EXECUTED', '7:45d9b25fc3b455d522d8dcc10a0f4c80', 'createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('9.0.1-KEYCLOAK-12579-drop-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2023-06-27 15:27:44', 82, 'MARK_RAN', '7:890ae73712bc187a66c2813a724d037f', 'dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('9.0.1-KEYCLOAK-12579-add-not-null-constraint', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2023-06-27 15:27:45', 83, 'EXECUTED', '7:0a211980d27fafe3ff50d19a3a29b538', 'addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('9.0.1-KEYCLOAK-12579-recreate-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2023-06-27 15:27:45', 84, 'MARK_RAN', '7:a161e2ae671a9020fff61e996a207377', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('9.0.1-add-index-to-events', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2023-06-27 15:27:45', 85, 'EXECUTED', '7:01c49302201bdf815b0a18d1f98a55dc', 'createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('map-remove-ri', 'keycloak', 'META-INF/jpa-changelog-11.0.0.xml', '2023-06-27 15:27:46', 86, 'EXECUTED', '7:3dace6b144c11f53f1ad2c0361279b86', 'dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('map-remove-ri', 'keycloak', 'META-INF/jpa-changelog-12.0.0.xml', '2023-06-27 15:27:47', 87, 'EXECUTED', '7:578d0b92077eaf2ab95ad0ec087aa903', 'dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('12.1.0-add-realm-localization-table', 'keycloak', 'META-INF/jpa-changelog-12.0.0.xml', '2023-06-27 15:27:48', 88, 'EXECUTED', '7:c95abe90d962c57a09ecaee57972835d', 'createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('default-roles', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2023-06-27 15:27:49', 89, 'EXECUTED', '7:f1313bcc2994a5c4dc1062ed6d8282d3', 'addColumn tableName=REALM; customChange', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('default-roles-cleanup', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2023-06-27 15:27:49', 90, 'EXECUTED', '7:90d763b52eaffebefbcbde55f269508b', 'dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('13.0.0-KEYCLOAK-16844', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2023-06-27 15:27:50', 91, 'EXECUTED', '7:d554f0cb92b764470dccfa5e0014a7dd', 'createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('map-remove-ri-13.0.0', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2023-06-27 15:27:51', 92, 'EXECUTED', '7:73193e3ab3c35cf0f37ccea3bf783764', 'dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('13.0.0-KEYCLOAK-17992-drop-constraints', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2023-06-27 15:27:51', 93, 'MARK_RAN', '7:90a1e74f92e9cbaa0c5eab80b8a037f3', 'dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('13.0.0-increase-column-size-federated', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2023-06-27 15:27:52', 94, 'EXECUTED', '7:5b9248f29cd047c200083cc6d8388b16', 'modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('13.0.0-KEYCLOAK-17992-recreate-constraints', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2023-06-27 15:27:52', 95, 'MARK_RAN', '7:64db59e44c374f13955489e8990d17a1', 'addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...', '', NULL, '3.5.4', NULL, NULL, '7879475571'),
('json-string-accomodation-fixed', 'keycloak', 'META-INF/jpa-changelog-13.0.0.xml', '2023-06-27 15:27:54', 96, 'EXECUTED', '7:329a578cdb43262fff975f0a7f6cda60', 'addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE', '', NULL, '3.5.4', NULL, NULL, '7879475571');

-- --------------------------------------------------------

--
-- Estrutura para tabela `DATABASECHANGELOGLOCK`
--

CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `DATABASECHANGELOGLOCK`
--

INSERT INTO `DATABASECHANGELOGLOCK` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL),
(1000, b'0', NULL, NULL),
(1001, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `DEFAULT_CLIENT_SCOPE`
--

CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `DEFAULT_CLIENT_SCOPE`
--

INSERT INTO `DEFAULT_CLIENT_SCOPE` (`REALM_ID`, `SCOPE_ID`, `DEFAULT_SCOPE`) VALUES
('master', '0c6e0965-7a42-4226-8c35-4f14fc6a6681', b'1'),
('master', '0f22aa42-f10f-4df9-ac01-b40bb156f737', b'0'),
('master', '1448e5bb-1f8c-4531-83af-b195f4a2166d', b'1'),
('master', '5df606b9-c1b9-47e6-ba3c-a517c5ea6b88', b'0'),
('master', '824b6238-edab-4cb6-8542-ab3aebac772a', b'1'),
('master', '88968a16-1513-47bd-a057-bbaf681d6e7f', b'1'),
('master', 'b77d67bf-4c14-4701-b475-3faf4e0f9bff', b'0'),
('master', 'd5318c07-04cf-4802-8f82-f99d208286e3', b'1'),
('master', 'fbd2cffc-adfe-4309-b1de-cce3fa739286', b'0'),
('pdz', '138eaeca-610d-4b9a-8bb5-ba5463fc3865', b'1'),
('pdz', '44ef7104-d0ce-4abb-affd-6e07be16d30d', b'1'),
('pdz', '5118c2fd-d2f8-4cb6-ae13-d1245ead21df', b'1'),
('pdz', '51934a88-d20c-4791-8a43-ecec4b9ad1be', b'1'),
('pdz', '83d51a7f-d7ae-4ec9-8909-9a014b6c080a', b'0'),
('pdz', '95d8156c-0db1-429a-a782-2357c0218e7a', b'0'),
('pdz', 'b233e5af-e8b0-425a-a8be-46eafee34ca2', b'1'),
('pdz', 'b77907ea-9345-494c-abd0-5a81ceb34ef3', b'0'),
('pdz', 'e1211677-4311-43bb-a189-392deddb4fd5', b'0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `EVENT_ENTITY`
--

CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` varchar(2550) DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint(20) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FEDERATED_IDENTITY`
--

CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text,
  `USER_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FEDERATED_USER`
--

CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FED_USER_ATTRIBUTE`
--

CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` varchar(2024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FED_USER_CONSENT`
--

CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FED_USER_CONSENT_CL_SCOPE`
--

CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FED_USER_CREDENTIAL`
--

CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext,
  `CREDENTIAL_DATA` longtext,
  `PRIORITY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FED_USER_GROUP_MEMBERSHIP`
--

CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FED_USER_REQUIRED_ACTION`
--

CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `FED_USER_ROLE_MAPPING`
--

CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `GROUP_ATTRIBUTE`
--

CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `GROUP_ROLE_MAPPING`
--

CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `IDENTITY_PROVIDER`
--

CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `AUTHENTICATE_BY_DEFAULT` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` bit(1) NOT NULL DEFAULT b'1',
  `TRUST_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `IDENTITY_PROVIDER_CONFIG`
--

CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `IDENTITY_PROVIDER_MAPPER`
--

CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `IDP_MAPPER_CONFIG`
--

CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `KEYCLOAK_GROUP`
--

CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `KEYCLOAK_ROLE`
--

CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` bit(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `KEYCLOAK_ROLE`
--

INSERT INTO `KEYCLOAK_ROLE` (`ID`, `CLIENT_REALM_CONSTRAINT`, `CLIENT_ROLE`, `DESCRIPTION`, `NAME`, `REALM_ID`, `CLIENT`, `REALM`) VALUES
('167e8d7e-1839-4b27-9680-5e2ca3f2c225', '87ece354-e588-4e04-bf35-cb2735739493', b'1', '${role_manage-account-links}', 'manage-account-links', 'pdz', '87ece354-e588-4e04-bf35-cb2735739493', NULL),
('196cf0fc-5239-448b-a678-13f9d1f4cb1f', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_manage-authorization}', 'manage-authorization', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('199a6630-4f9b-49e0-97fc-b5235653dec7', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_manage-users}', 'manage-users', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('1a802ec7-4562-432a-9ab9-52d61fc257d3', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_manage-clients}', 'manage-clients', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('1f194f5d-27c4-4b12-8bb6-f3ae7466c5ca', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', b'1', '${role_manage-account-links}', 'manage-account-links', 'master', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', NULL),
('2f01af0b-f487-4349-abdc-57d0e02c18ff', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_view-events}', 'view-events', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('2faa9a28-1c5b-46dd-8259-65bd87657ac3', 'master', b'0', '${role_uma_authorization}', 'uma_authorization', 'master', NULL, NULL),
('31fe7ed1-d9e8-42da-bca2-9bf48ca08b74', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_query-groups}', 'query-groups', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('37aad3f9-521b-4e4a-a937-3289041ea42e', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_query-users}', 'query-users', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('399e502f-f033-43d3-a326-bbba0d834945', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_manage-identity-providers}', 'manage-identity-providers', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('39a37fb0-76bf-4a6d-a80c-5a9871ea19cd', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_query-clients}', 'query-clients', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('3d744e46-972f-48c9-8a98-bf56dfa6a19b', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_view-events}', 'view-events', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('40043d6d-107d-4a93-8987-e6b7bcc35bfb', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_impersonation}', 'impersonation', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('407c57f2-54b9-4654-ac56-d009c36826c6', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_query-users}', 'query-users', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('431782fc-fa38-4841-82f4-e63326fd239e', 'master', b'0', '${role_default-roles}', 'default-roles-master', 'master', NULL, NULL),
('45d6c33c-ad57-453e-b736-8f3ad348787c', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_view-realm}', 'view-realm', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('465a5a0c-d444-43f8-ace7-dcdc713140a9', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_manage-authorization}', 'manage-authorization', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('4690849b-ac83-46db-b7bd-a493bfc5dcec', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_view-authorization}', 'view-authorization', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('47b8b078-9c20-4a63-bfb8-d2bb041feda1', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_manage-realm}', 'manage-realm', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('4b5697f9-766f-4b58-8367-99c70047fa7e', 'f7a311eb-eb13-47ec-9ed2-4967ef0debdc', b'1', '${role_read-token}', 'read-token', 'pdz', 'f7a311eb-eb13-47ec-9ed2-4967ef0debdc', NULL),
('4ccb0025-203e-4948-a5ab-68a66c265b6c', '87ece354-e588-4e04-bf35-cb2735739493', b'1', '${role_manage-consent}', 'manage-consent', 'pdz', '87ece354-e588-4e04-bf35-cb2735739493', NULL),
('56182c32-d6e4-4a95-b631-89d92afeca2a', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_view-realm}', 'view-realm', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('5bdf874d-e5f2-4cfb-86a5-1dd95d64b163', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', b'1', '${role_manage-account}', 'manage-account', 'master', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', NULL),
('5d86291f-15ac-437b-a20d-51822b5e79cd', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_view-identity-providers}', 'view-identity-providers', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('5f53af29-3cf5-4728-9a4d-673b2d03ec0e', '0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', b'1', '${role_read-token}', 'read-token', 'master', '0b5ced35-f34f-4dbc-9f87-a8e2ef646ee0', NULL),
('6919b357-d796-406d-b9d6-1eb40953397e', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_manage-identity-providers}', 'manage-identity-providers', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('6c774609-8ab9-474d-9cc7-e4f3c915462d', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_query-clients}', 'query-clients', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('6f694763-cdad-4880-a461-6760eae7a5f3', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_view-clients}', 'view-clients', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('7169c54a-0f15-41a0-b167-c3f373a5e7c2', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_create-client}', 'create-client', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('72021b32-9bc4-471b-8e03-d33134588874', '87ece354-e588-4e04-bf35-cb2735739493', b'1', '${role_manage-account}', 'manage-account', 'pdz', '87ece354-e588-4e04-bf35-cb2735739493', NULL),
('745217ea-a493-4ac8-a6bd-258933f6f0b3', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_realm-admin}', 'realm-admin', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('7735e986-0d2f-4e6e-92da-50cddfe5e897', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', b'1', '${role_view-consent}', 'view-consent', 'master', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', NULL),
('77f974e7-2c0b-4376-b8f2-85af431a3781', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', b'1', '${role_view-profile}', 'view-profile', 'master', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', NULL),
('78719fbe-c974-4839-872d-63c0266b35e3', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_query-groups}', 'query-groups', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('7cfec401-352e-41f7-8667-6eaa921b3bc5', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_view-authorization}', 'view-authorization', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('7ee5edad-4704-40b8-9c51-7a857b6595f7', 'pdz', b'0', '${role_default-roles}', 'default-roles-pdz', 'pdz', NULL, NULL),
('84c79974-fbcf-411a-85d7-0e1c267227d8', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_manage-realm}', 'manage-realm', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('87e77691-b88b-494b-964f-64d58bc95837', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_view-identity-providers}', 'view-identity-providers', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('8d954cbe-560b-406b-9a31-9bbc25428489', 'pdz', b'0', NULL, 'admin', 'pdz', NULL, NULL),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'master', b'0', '${role_admin}', 'admin', 'master', NULL, NULL),
('902c97fd-870b-4336-9a63-f8a3a49d4875', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_manage-clients}', 'manage-clients', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('9934835f-1944-4d65-80b9-6bfd57f6dbe5', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_query-realms}', 'query-realms', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('9a02f543-bc2a-4464-8d51-674a8e1bc3d2', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_view-authorization}', 'view-authorization', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('9c46cc19-d45b-4a86-8d3f-f9db0f317587', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_manage-authorization}', 'manage-authorization', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('a0af7a89-4b01-4e87-9100-49509f2e8e01', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_impersonation}', 'impersonation', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('a11d06a5-258e-4b03-b8e8-4e06cb6001b3', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_manage-clients}', 'manage-clients', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('ad9f492a-0441-4c31-b12e-fa35e96a7658', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_manage-events}', 'manage-events', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('adce7146-c586-45ee-8897-41b1b52ad4f6', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', b'1', '${role_delete-account}', 'delete-account', 'master', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', NULL),
('b1c1dd0a-b43f-41c2-b596-2604e84e060f', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_manage-events}', 'manage-events', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('b2f357d5-6cd1-4397-9df4-a1a01459cab6', '87ece354-e588-4e04-bf35-cb2735739493', b'1', '${role_view-applications}', 'view-applications', 'pdz', '87ece354-e588-4e04-bf35-cb2735739493', NULL),
('b447ffd9-db71-41d5-b2f9-adfcfec26e33', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_view-users}', 'view-users', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('b6b03b38-7837-479a-b6ef-3b43ef346ba9', 'pdz', b'0', '${role_offline-access}', 'offline_access', 'pdz', NULL, NULL),
('ba01f20a-64a8-4f28-b833-db5b695f1733', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_query-clients}', 'query-clients', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('bac0b226-286e-480a-8224-331ed2541ac9', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_manage-realm}', 'manage-realm', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('bde6547d-2158-4087-9760-3825c3578bdb', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_impersonation}', 'impersonation', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('c05ff153-fd08-47f5-a7ed-c076ca19b3e6', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_view-clients}', 'view-clients', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('c15e33a8-2def-40e3-84db-74f8fa0e3daa', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_manage-identity-providers}', 'manage-identity-providers', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('c2a147df-0600-4b6b-9295-567816d73d08', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_manage-users}', 'manage-users', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('c8e402e9-63e2-4ce2-9737-856872ce1f8e', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', b'1', '${role_view-applications}', 'view-applications', 'master', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', NULL),
('c9b807be-3b13-40fc-8da1-df569b3401e5', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_query-realms}', 'query-realms', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('cac7f405-0d88-4e3d-b685-aa3a0dfcebb8', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_create-client}', 'create-client', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('cfe68bca-5465-4f29-bcb0-3b3afcf940da', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_manage-events}', 'manage-events', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('d483e8a3-0839-42aa-9e8d-06e25d64c50c', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_view-identity-providers}', 'view-identity-providers', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('d488ca5f-d27c-4276-93b9-2122e02e144c', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_view-clients}', 'view-clients', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('dbc9e856-caf3-4b06-808d-aa7f057dbd50', 'master', b'0', '${role_offline-access}', 'offline_access', 'master', NULL, NULL),
('ddf850d7-dc6e-4553-838e-2c1baae32933', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_create-client}', 'create-client', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('decb40da-5161-42d8-8316-a713ae82c574', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_query-groups}', 'query-groups', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('dfa0a41f-db2c-420b-8520-8d5835ace83a', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_manage-users}', 'manage-users', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('e0eb3433-8e6c-4768-a6bc-de7bdf3a1117', 'pdz', b'0', '${role_uma_authorization}', 'uma_authorization', 'pdz', NULL, NULL),
('e3b20674-c89b-4c96-99ac-2d4c258351e5', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_view-events}', 'view-events', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('e562d9e3-51ee-441f-a849-1dcb2aeb6f7a', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_query-users}', 'query-users', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('e598e278-d158-4626-9f3f-7ac6704afd2f', 'master', b'0', '${role_create-realm}', 'create-realm', 'master', NULL, NULL),
('e690efae-33d3-4b9b-a625-a284eee08d88', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_view-users}', 'view-users', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('e83d66ba-e877-42ff-9669-d1547abf370e', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', b'1', '${role_query-realms}', 'query-realms', 'master', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', NULL),
('f0b2357f-055f-4808-b919-1ca23d43d8cf', '87ece354-e588-4e04-bf35-cb2735739493', b'1', '${role_view-profile}', 'view-profile', 'pdz', '87ece354-e588-4e04-bf35-cb2735739493', NULL),
('f1352930-50fc-4231-932b-99cb3676627d', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', b'1', '${role_view-users}', 'view-users', 'pdz', 'fbd35ffa-46c9-4028-87c4-45b1c4288a9c', NULL),
('f2b95903-c0c9-45a1-b9b9-be7240a173c6', '03723fb9-120e-453d-b715-54158a44da7c', b'1', '${role_view-realm}', 'view-realm', 'master', '03723fb9-120e-453d-b715-54158a44da7c', NULL),
('f890ff6f-8c01-4e40-a139-744589380b1b', '87ece354-e588-4e04-bf35-cb2735739493', b'1', '${role_view-consent}', 'view-consent', 'pdz', '87ece354-e588-4e04-bf35-cb2735739493', NULL),
('f8ee442b-5fe1-435e-921a-cd1a19155a07', '87ece354-e588-4e04-bf35-cb2735739493', b'1', '${role_delete-account}', 'delete-account', 'pdz', '87ece354-e588-4e04-bf35-cb2735739493', NULL),
('fe355692-e914-4c10-a27b-f04b94a6ba55', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', b'1', '${role_manage-consent}', 'manage-consent', 'master', '7142407d-7cbc-44fc-adba-85e8ecd6ed23', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `MIGRATION_MODEL`
--

CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `MIGRATION_MODEL`
--

INSERT INTO `MIGRATION_MODEL` (`ID`, `VERSION`, `UPDATE_TIME`) VALUES
('gy9b6', '13.0.1', 1687879677);

-- --------------------------------------------------------

--
-- Estrutura para tabela `OFFLINE_CLIENT_SESSION`
--

CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `DATA` longtext,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `OFFLINE_USER_SESSION`
--

CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int(11) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext,
  `LAST_SESSION_REFRESH` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `POLICY_CONFIG`
--

CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `PROTOCOL_MAPPER`
--

CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `PROTOCOL_MAPPER`
--

INSERT INTO `PROTOCOL_MAPPER` (`ID`, `NAME`, `PROTOCOL`, `PROTOCOL_MAPPER_NAME`, `CLIENT_ID`, `CLIENT_SCOPE_ID`) VALUES
('0a2ca4f0-cd16-4095-9c89-d4d9273a50d3', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('0c258094-17a4-4485-8322-b39f0d37eb97', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('0d0bce2f-a51b-43a0-bc21-98c0e1f83201', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', '0d69e5f3-ae77-4382-8e69-36f6d371c3fb', NULL),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'address', 'openid-connect', 'oidc-address-mapper', NULL, '95d8156c-0db1-429a-a782-2357c0218e7a'),
('1dacc41a-413f-44f3-adee-8f612c6e97ce', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', 'f97661fa-9873-4d5f-94d9-8afe9de09838', NULL),
('21e85ca7-26ab-422a-b67c-dd95efc3009a', 'username', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('28fd3917-2d39-46c6-8b31-ed8504f540c7', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('35115868-24f0-43da-aadc-d53d3104aeb0', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('35306cbf-44fc-4114-8d22-f0bf4b51df33', 'upn', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'e1211677-4311-43bb-a189-392deddb4fd5'),
('373efe16-ec4b-4620-83b1-fafeba851c8d', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '83d51a7f-d7ae-4ec9-8909-9a014b6c080a'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'address', 'openid-connect', 'oidc-address-mapper', NULL, '5df606b9-c1b9-47e6-ba3c-a517c5ea6b88'),
('461d4656-418a-4d3f-a786-4faee29cd9a2', 'family name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('48ff1497-ce0b-4db4-af73-19867baec3cd', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, '1448e5bb-1f8c-4531-83af-b195f4a2166d'),
('4aaa3d05-2697-48fb-a69d-d8edf398f9d8', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('4dd164f2-cc84-48ef-9a47-53df013d57be', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('4e87666e-91de-4f8e-a923-84fbcd455d67', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'b77d67bf-4c14-4701-b475-3faf4e0f9bff'),
('4f0394c9-c502-4f43-9daf-c9ab59900625', 'family name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('4f612e49-d7b8-4676-b078-1d1c98751cd0', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('52a5ae90-b13a-48a0-89a5-32cd7a058454', 'email', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '44ef7104-d0ce-4abb-affd-6e07be16d30d'),
('56387352-9702-4349-8dfa-8dffae0bfb15', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('59ba27b2-a099-4505-abe5-e5d56edcedf0', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('5a30db6d-7d7c-4310-b5ae-9d3fa7b36787', 'Client ID', 'openid-connect', 'oidc-usersessionmodel-note-mapper', '3b9fe014-da15-4287-99e4-2c64c45bb1bc', NULL),
('5c5fec9d-1cf8-4341-b380-d95d3e959d50', 'given name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('67877220-e904-47f0-9a0a-c6d6f262eccb', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('693206e5-91aa-4884-a313-13f112bde3c1', 'Client Host', 'openid-connect', 'oidc-usersessionmodel-note-mapper', 'fcdac5cd-126b-45d5-a1f4-0e22203b54c4', NULL),
('6cb7d089-b440-4fc0-bd8e-97c12d3f6b7a', 'email', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '0c6e0965-7a42-4226-8c35-4f14fc6a6681'),
('72e35b8c-e908-49ec-ba59-2bf62161f6d8', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, '51934a88-d20c-4791-8a43-ecec4b9ad1be'),
('737c0265-407b-49e7-8718-bec40fe30264', 'Client IP Address', 'openid-connect', 'oidc-usersessionmodel-note-mapper', '3b9fe014-da15-4287-99e4-2c64c45bb1bc', NULL),
('82e7ec5d-c6bb-4121-9d4a-fab7d1c68668', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '0c6e0965-7a42-4226-8c35-4f14fc6a6681'),
('832cf7d1-e712-46a8-aa22-54cce31ca2b8', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '0f22aa42-f10f-4df9-ac01-b40bb156f737'),
('858b5993-2888-4271-a186-1a90ef55b091', 'role list', 'saml', 'saml-role-list-mapper', NULL, '88968a16-1513-47bd-a057-bbaf681d6e7f'),
('87a2ec3f-0c63-4493-9d6c-2c7cdc36fe48', 'Client IP Address', 'openid-connect', 'oidc-usersessionmodel-note-mapper', 'fcdac5cd-126b-45d5-a1f4-0e22203b54c4', NULL),
('920ec78b-da91-4084-9138-d5f0528d9370', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('936ffb0b-ff42-400e-a6be-1dd563735178', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('983a9ad4-e65a-46fe-a21d-8b21561da769', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', 'd2dd98b6-78c2-47d8-b048-113c82dff286', NULL),
('9f30140c-e577-443f-becb-a5e4217225ba', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('a841f7bf-bf60-4971-9789-35312889975f', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('b2d5f2a1-c5f8-4818-aeda-d8bb2f262d82', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, 'd5318c07-04cf-4802-8f82-f99d208286e3'),
('b867abae-d235-4b3c-b451-16297ecbc0a0', 'given name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('bae8ec06-ce1e-4b98-8a20-4f6753c1d43c', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '44ef7104-d0ce-4abb-affd-6e07be16d30d'),
('bc93871d-d550-465b-96e8-f7a1d7eafe4e', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('bcc1c196-8e31-4b76-9ab2-49bac770e7eb', 'role list', 'saml', 'saml-role-list-mapper', NULL, '138eaeca-610d-4b9a-8bb5-ba5463fc3865'),
('bd7d7c3a-cc2a-4179-a089-33294f767531', 'Client ID', 'openid-connect', 'oidc-usersessionmodel-note-mapper', 'fcdac5cd-126b-45d5-a1f4-0e22203b54c4', NULL),
('bf1d6736-c40b-4717-9e22-6ea7da12d29f', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '83d51a7f-d7ae-4ec9-8909-9a014b6c080a'),
('bf2c56d2-d2e7-493e-b815-879caa762b57', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '51934a88-d20c-4791-8a43-ecec4b9ad1be'),
('c0408df8-1dfa-41d4-8128-076bb1bb63c0', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, 'd5318c07-04cf-4802-8f82-f99d208286e3'),
('cd654195-8216-4711-a4f2-5e65b8e337bf', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'b77d67bf-4c14-4701-b475-3faf4e0f9bff'),
('d24b82e0-657a-442f-9cec-39b8eae22bcb', 'username', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('d29d8cd5-aa0a-4a58-8780-79b6e8fac46d', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, '51934a88-d20c-4791-8a43-ecec4b9ad1be'),
('d6a9ea9a-7392-47dd-8af2-ba87fd12b257', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('dc629e5d-2364-4101-929d-478f58b759a3', 'Client Host', 'openid-connect', 'oidc-usersessionmodel-note-mapper', '3b9fe014-da15-4287-99e4-2c64c45bb1bc', NULL),
('de12fb8a-206b-4e40-86be-acfd01007e1e', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('e0316716-65c9-467c-bdb3-adaa28f1cbb5', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, 'e1211677-4311-43bb-a189-392deddb4fd5'),
('e39b5fa4-1382-48d1-b816-6ca28040e1ab', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, 'b233e5af-e8b0-425a-a8be-46eafee34ca2'),
('e89a0b1a-c496-485b-8427-c30217dfa86d', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', '237adfce-1bee-4ef5-944d-4a0299b18929', NULL),
('ea846db7-7564-42b4-b603-39b1e73d7ddc', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '5118c2fd-d2f8-4cb6-ae13-d1245ead21df'),
('ebb002f2-c994-428d-a026-99d818417079', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('ec7d2221-e920-44e2-ab0d-f37bd06f7909', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('eef3bf36-5797-4223-9b70-14d50b334a25', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('efead72a-4516-405c-a660-16d49a6ccba9', 'upn', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '0f22aa42-f10f-4df9-ac01-b40bb156f737'),
('f1c429f2-f010-47dd-aea8-c93abd56c897', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '824b6238-edab-4cb6-8542-ab3aebac772a'),
('fa4f19dd-c672-414f-bbf5-e9d4fd00bbd4', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, 'd5318c07-04cf-4802-8f82-f99d208286e3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `PROTOCOL_MAPPER_CONFIG`
--

CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `PROTOCOL_MAPPER_CONFIG`
--

INSERT INTO `PROTOCOL_MAPPER_CONFIG` (`PROTOCOL_MAPPER_ID`, `VALUE`, `NAME`) VALUES
('0a2ca4f0-cd16-4095-9c89-d4d9273a50d3', 'true', 'access.token.claim'),
('0a2ca4f0-cd16-4095-9c89-d4d9273a50d3', 'nickname', 'claim.name'),
('0a2ca4f0-cd16-4095-9c89-d4d9273a50d3', 'true', 'id.token.claim'),
('0a2ca4f0-cd16-4095-9c89-d4d9273a50d3', 'String', 'jsonType.label'),
('0a2ca4f0-cd16-4095-9c89-d4d9273a50d3', 'nickname', 'user.attribute'),
('0a2ca4f0-cd16-4095-9c89-d4d9273a50d3', 'true', 'userinfo.token.claim'),
('0c258094-17a4-4485-8322-b39f0d37eb97', 'true', 'access.token.claim'),
('0c258094-17a4-4485-8322-b39f0d37eb97', 'gender', 'claim.name'),
('0c258094-17a4-4485-8322-b39f0d37eb97', 'true', 'id.token.claim'),
('0c258094-17a4-4485-8322-b39f0d37eb97', 'String', 'jsonType.label'),
('0c258094-17a4-4485-8322-b39f0d37eb97', 'gender', 'user.attribute'),
('0c258094-17a4-4485-8322-b39f0d37eb97', 'true', 'userinfo.token.claim'),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'true', 'access.token.claim'),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'true', 'id.token.claim'),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'country', 'user.attribute.country'),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'formatted', 'user.attribute.formatted'),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'locality', 'user.attribute.locality'),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'postal_code', 'user.attribute.postal_code'),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'region', 'user.attribute.region'),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'street', 'user.attribute.street'),
('19acd023-febd-4596-a6c0-e9f9781e7ee5', 'true', 'userinfo.token.claim'),
('21e85ca7-26ab-422a-b67c-dd95efc3009a', 'true', 'access.token.claim'),
('21e85ca7-26ab-422a-b67c-dd95efc3009a', 'preferred_username', 'claim.name'),
('21e85ca7-26ab-422a-b67c-dd95efc3009a', 'true', 'id.token.claim'),
('21e85ca7-26ab-422a-b67c-dd95efc3009a', 'String', 'jsonType.label'),
('21e85ca7-26ab-422a-b67c-dd95efc3009a', 'username', 'user.attribute'),
('21e85ca7-26ab-422a-b67c-dd95efc3009a', 'true', 'userinfo.token.claim'),
('28fd3917-2d39-46c6-8b31-ed8504f540c7', 'true', 'access.token.claim'),
('28fd3917-2d39-46c6-8b31-ed8504f540c7', 'birthdate', 'claim.name'),
('28fd3917-2d39-46c6-8b31-ed8504f540c7', 'true', 'id.token.claim'),
('28fd3917-2d39-46c6-8b31-ed8504f540c7', 'String', 'jsonType.label'),
('28fd3917-2d39-46c6-8b31-ed8504f540c7', 'birthdate', 'user.attribute'),
('28fd3917-2d39-46c6-8b31-ed8504f540c7', 'true', 'userinfo.token.claim'),
('35115868-24f0-43da-aadc-d53d3104aeb0', 'true', 'access.token.claim'),
('35115868-24f0-43da-aadc-d53d3104aeb0', 'middle_name', 'claim.name'),
('35115868-24f0-43da-aadc-d53d3104aeb0', 'true', 'id.token.claim'),
('35115868-24f0-43da-aadc-d53d3104aeb0', 'String', 'jsonType.label'),
('35115868-24f0-43da-aadc-d53d3104aeb0', 'middleName', 'user.attribute'),
('35115868-24f0-43da-aadc-d53d3104aeb0', 'true', 'userinfo.token.claim'),
('35306cbf-44fc-4114-8d22-f0bf4b51df33', 'true', 'access.token.claim'),
('35306cbf-44fc-4114-8d22-f0bf4b51df33', 'upn', 'claim.name'),
('35306cbf-44fc-4114-8d22-f0bf4b51df33', 'true', 'id.token.claim'),
('35306cbf-44fc-4114-8d22-f0bf4b51df33', 'String', 'jsonType.label'),
('35306cbf-44fc-4114-8d22-f0bf4b51df33', 'username', 'user.attribute'),
('35306cbf-44fc-4114-8d22-f0bf4b51df33', 'true', 'userinfo.token.claim'),
('373efe16-ec4b-4620-83b1-fafeba851c8d', 'true', 'access.token.claim'),
('373efe16-ec4b-4620-83b1-fafeba851c8d', 'phone_number_verified', 'claim.name'),
('373efe16-ec4b-4620-83b1-fafeba851c8d', 'true', 'id.token.claim'),
('373efe16-ec4b-4620-83b1-fafeba851c8d', 'boolean', 'jsonType.label'),
('373efe16-ec4b-4620-83b1-fafeba851c8d', 'phoneNumberVerified', 'user.attribute'),
('373efe16-ec4b-4620-83b1-fafeba851c8d', 'true', 'userinfo.token.claim'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'true', 'access.token.claim'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'true', 'id.token.claim'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'country', 'user.attribute.country'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'formatted', 'user.attribute.formatted'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'locality', 'user.attribute.locality'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'postal_code', 'user.attribute.postal_code'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'region', 'user.attribute.region'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'street', 'user.attribute.street'),
('42260db0-64a3-4860-a73d-9413ecd8eb69', 'true', 'userinfo.token.claim'),
('461d4656-418a-4d3f-a786-4faee29cd9a2', 'true', 'access.token.claim'),
('461d4656-418a-4d3f-a786-4faee29cd9a2', 'family_name', 'claim.name'),
('461d4656-418a-4d3f-a786-4faee29cd9a2', 'true', 'id.token.claim'),
('461d4656-418a-4d3f-a786-4faee29cd9a2', 'String', 'jsonType.label'),
('461d4656-418a-4d3f-a786-4faee29cd9a2', 'lastName', 'user.attribute'),
('461d4656-418a-4d3f-a786-4faee29cd9a2', 'true', 'userinfo.token.claim'),
('4aaa3d05-2697-48fb-a69d-d8edf398f9d8', 'true', 'access.token.claim'),
('4aaa3d05-2697-48fb-a69d-d8edf398f9d8', 'middle_name', 'claim.name'),
('4aaa3d05-2697-48fb-a69d-d8edf398f9d8', 'true', 'id.token.claim'),
('4aaa3d05-2697-48fb-a69d-d8edf398f9d8', 'String', 'jsonType.label'),
('4aaa3d05-2697-48fb-a69d-d8edf398f9d8', 'middleName', 'user.attribute'),
('4aaa3d05-2697-48fb-a69d-d8edf398f9d8', 'true', 'userinfo.token.claim'),
('4dd164f2-cc84-48ef-9a47-53df013d57be', 'true', 'access.token.claim'),
('4dd164f2-cc84-48ef-9a47-53df013d57be', 'updated_at', 'claim.name'),
('4dd164f2-cc84-48ef-9a47-53df013d57be', 'true', 'id.token.claim'),
('4dd164f2-cc84-48ef-9a47-53df013d57be', 'String', 'jsonType.label'),
('4dd164f2-cc84-48ef-9a47-53df013d57be', 'updatedAt', 'user.attribute'),
('4dd164f2-cc84-48ef-9a47-53df013d57be', 'true', 'userinfo.token.claim'),
('4e87666e-91de-4f8e-a923-84fbcd455d67', 'true', 'access.token.claim'),
('4e87666e-91de-4f8e-a923-84fbcd455d67', 'phone_number_verified', 'claim.name'),
('4e87666e-91de-4f8e-a923-84fbcd455d67', 'true', 'id.token.claim'),
('4e87666e-91de-4f8e-a923-84fbcd455d67', 'boolean', 'jsonType.label'),
('4e87666e-91de-4f8e-a923-84fbcd455d67', 'phoneNumberVerified', 'user.attribute'),
('4e87666e-91de-4f8e-a923-84fbcd455d67', 'true', 'userinfo.token.claim'),
('4f0394c9-c502-4f43-9daf-c9ab59900625', 'true', 'access.token.claim'),
('4f0394c9-c502-4f43-9daf-c9ab59900625', 'family_name', 'claim.name'),
('4f0394c9-c502-4f43-9daf-c9ab59900625', 'true', 'id.token.claim'),
('4f0394c9-c502-4f43-9daf-c9ab59900625', 'String', 'jsonType.label'),
('4f0394c9-c502-4f43-9daf-c9ab59900625', 'lastName', 'user.attribute'),
('4f0394c9-c502-4f43-9daf-c9ab59900625', 'true', 'userinfo.token.claim'),
('4f612e49-d7b8-4676-b078-1d1c98751cd0', 'true', 'access.token.claim'),
('4f612e49-d7b8-4676-b078-1d1c98751cd0', 'true', 'id.token.claim'),
('4f612e49-d7b8-4676-b078-1d1c98751cd0', 'true', 'userinfo.token.claim'),
('52a5ae90-b13a-48a0-89a5-32cd7a058454', 'true', 'access.token.claim'),
('52a5ae90-b13a-48a0-89a5-32cd7a058454', 'email', 'claim.name'),
('52a5ae90-b13a-48a0-89a5-32cd7a058454', 'true', 'id.token.claim'),
('52a5ae90-b13a-48a0-89a5-32cd7a058454', 'String', 'jsonType.label'),
('52a5ae90-b13a-48a0-89a5-32cd7a058454', 'email', 'user.attribute'),
('52a5ae90-b13a-48a0-89a5-32cd7a058454', 'true', 'userinfo.token.claim'),
('56387352-9702-4349-8dfa-8dffae0bfb15', 'true', 'access.token.claim'),
('56387352-9702-4349-8dfa-8dffae0bfb15', 'picture', 'claim.name'),
('56387352-9702-4349-8dfa-8dffae0bfb15', 'true', 'id.token.claim'),
('56387352-9702-4349-8dfa-8dffae0bfb15', 'String', 'jsonType.label'),
('56387352-9702-4349-8dfa-8dffae0bfb15', 'picture', 'user.attribute'),
('56387352-9702-4349-8dfa-8dffae0bfb15', 'true', 'userinfo.token.claim'),
('59ba27b2-a099-4505-abe5-e5d56edcedf0', 'true', 'access.token.claim'),
('59ba27b2-a099-4505-abe5-e5d56edcedf0', 'zoneinfo', 'claim.name'),
('59ba27b2-a099-4505-abe5-e5d56edcedf0', 'true', 'id.token.claim'),
('59ba27b2-a099-4505-abe5-e5d56edcedf0', 'String', 'jsonType.label'),
('59ba27b2-a099-4505-abe5-e5d56edcedf0', 'zoneinfo', 'user.attribute'),
('59ba27b2-a099-4505-abe5-e5d56edcedf0', 'true', 'userinfo.token.claim'),
('5a30db6d-7d7c-4310-b5ae-9d3fa7b36787', 'true', 'access.token.claim'),
('5a30db6d-7d7c-4310-b5ae-9d3fa7b36787', 'clientId', 'claim.name'),
('5a30db6d-7d7c-4310-b5ae-9d3fa7b36787', 'true', 'id.token.claim'),
('5a30db6d-7d7c-4310-b5ae-9d3fa7b36787', 'String', 'jsonType.label'),
('5a30db6d-7d7c-4310-b5ae-9d3fa7b36787', 'clientId', 'user.session.note'),
('5c5fec9d-1cf8-4341-b380-d95d3e959d50', 'true', 'access.token.claim'),
('5c5fec9d-1cf8-4341-b380-d95d3e959d50', 'given_name', 'claim.name'),
('5c5fec9d-1cf8-4341-b380-d95d3e959d50', 'true', 'id.token.claim'),
('5c5fec9d-1cf8-4341-b380-d95d3e959d50', 'String', 'jsonType.label'),
('5c5fec9d-1cf8-4341-b380-d95d3e959d50', 'firstName', 'user.attribute'),
('5c5fec9d-1cf8-4341-b380-d95d3e959d50', 'true', 'userinfo.token.claim'),
('67877220-e904-47f0-9a0a-c6d6f262eccb', 'true', 'access.token.claim'),
('67877220-e904-47f0-9a0a-c6d6f262eccb', 'true', 'id.token.claim'),
('67877220-e904-47f0-9a0a-c6d6f262eccb', 'true', 'userinfo.token.claim'),
('693206e5-91aa-4884-a313-13f112bde3c1', 'true', 'access.token.claim'),
('693206e5-91aa-4884-a313-13f112bde3c1', 'clientHost', 'claim.name'),
('693206e5-91aa-4884-a313-13f112bde3c1', 'true', 'id.token.claim'),
('693206e5-91aa-4884-a313-13f112bde3c1', 'String', 'jsonType.label'),
('693206e5-91aa-4884-a313-13f112bde3c1', 'clientHost', 'user.session.note'),
('6cb7d089-b440-4fc0-bd8e-97c12d3f6b7a', 'true', 'access.token.claim'),
('6cb7d089-b440-4fc0-bd8e-97c12d3f6b7a', 'email', 'claim.name'),
('6cb7d089-b440-4fc0-bd8e-97c12d3f6b7a', 'true', 'id.token.claim'),
('6cb7d089-b440-4fc0-bd8e-97c12d3f6b7a', 'String', 'jsonType.label'),
('6cb7d089-b440-4fc0-bd8e-97c12d3f6b7a', 'email', 'user.attribute'),
('6cb7d089-b440-4fc0-bd8e-97c12d3f6b7a', 'true', 'userinfo.token.claim'),
('72e35b8c-e908-49ec-ba59-2bf62161f6d8', 'true', 'access.token.claim'),
('72e35b8c-e908-49ec-ba59-2bf62161f6d8', 'resource_access.${client_id}.roles', 'claim.name'),
('72e35b8c-e908-49ec-ba59-2bf62161f6d8', 'String', 'jsonType.label'),
('72e35b8c-e908-49ec-ba59-2bf62161f6d8', 'true', 'multivalued'),
('72e35b8c-e908-49ec-ba59-2bf62161f6d8', 'foo', 'user.attribute'),
('737c0265-407b-49e7-8718-bec40fe30264', 'true', 'access.token.claim'),
('737c0265-407b-49e7-8718-bec40fe30264', 'clientAddress', 'claim.name'),
('737c0265-407b-49e7-8718-bec40fe30264', 'true', 'id.token.claim'),
('737c0265-407b-49e7-8718-bec40fe30264', 'String', 'jsonType.label'),
('737c0265-407b-49e7-8718-bec40fe30264', 'clientAddress', 'user.session.note'),
('82e7ec5d-c6bb-4121-9d4a-fab7d1c68668', 'true', 'access.token.claim'),
('82e7ec5d-c6bb-4121-9d4a-fab7d1c68668', 'email_verified', 'claim.name'),
('82e7ec5d-c6bb-4121-9d4a-fab7d1c68668', 'true', 'id.token.claim'),
('82e7ec5d-c6bb-4121-9d4a-fab7d1c68668', 'boolean', 'jsonType.label'),
('82e7ec5d-c6bb-4121-9d4a-fab7d1c68668', 'emailVerified', 'user.attribute'),
('82e7ec5d-c6bb-4121-9d4a-fab7d1c68668', 'true', 'userinfo.token.claim'),
('832cf7d1-e712-46a8-aa22-54cce31ca2b8', 'true', 'access.token.claim'),
('832cf7d1-e712-46a8-aa22-54cce31ca2b8', 'groups', 'claim.name'),
('832cf7d1-e712-46a8-aa22-54cce31ca2b8', 'true', 'id.token.claim'),
('832cf7d1-e712-46a8-aa22-54cce31ca2b8', 'String', 'jsonType.label'),
('832cf7d1-e712-46a8-aa22-54cce31ca2b8', 'true', 'multivalued'),
('832cf7d1-e712-46a8-aa22-54cce31ca2b8', 'foo', 'user.attribute'),
('858b5993-2888-4271-a186-1a90ef55b091', 'Role', 'attribute.name'),
('858b5993-2888-4271-a186-1a90ef55b091', 'Basic', 'attribute.nameformat'),
('858b5993-2888-4271-a186-1a90ef55b091', 'false', 'single'),
('87a2ec3f-0c63-4493-9d6c-2c7cdc36fe48', 'true', 'access.token.claim'),
('87a2ec3f-0c63-4493-9d6c-2c7cdc36fe48', 'clientAddress', 'claim.name'),
('87a2ec3f-0c63-4493-9d6c-2c7cdc36fe48', 'true', 'id.token.claim'),
('87a2ec3f-0c63-4493-9d6c-2c7cdc36fe48', 'String', 'jsonType.label'),
('87a2ec3f-0c63-4493-9d6c-2c7cdc36fe48', 'clientAddress', 'user.session.note'),
('920ec78b-da91-4084-9138-d5f0528d9370', 'true', 'access.token.claim'),
('920ec78b-da91-4084-9138-d5f0528d9370', 'birthdate', 'claim.name'),
('920ec78b-da91-4084-9138-d5f0528d9370', 'true', 'id.token.claim'),
('920ec78b-da91-4084-9138-d5f0528d9370', 'String', 'jsonType.label'),
('920ec78b-da91-4084-9138-d5f0528d9370', 'birthdate', 'user.attribute'),
('920ec78b-da91-4084-9138-d5f0528d9370', 'true', 'userinfo.token.claim'),
('936ffb0b-ff42-400e-a6be-1dd563735178', 'true', 'access.token.claim'),
('936ffb0b-ff42-400e-a6be-1dd563735178', 'gender', 'claim.name'),
('936ffb0b-ff42-400e-a6be-1dd563735178', 'true', 'id.token.claim'),
('936ffb0b-ff42-400e-a6be-1dd563735178', 'String', 'jsonType.label'),
('936ffb0b-ff42-400e-a6be-1dd563735178', 'gender', 'user.attribute'),
('936ffb0b-ff42-400e-a6be-1dd563735178', 'true', 'userinfo.token.claim'),
('983a9ad4-e65a-46fe-a21d-8b21561da769', 'true', 'access.token.claim'),
('983a9ad4-e65a-46fe-a21d-8b21561da769', 'locale', 'claim.name'),
('983a9ad4-e65a-46fe-a21d-8b21561da769', 'true', 'id.token.claim'),
('983a9ad4-e65a-46fe-a21d-8b21561da769', 'String', 'jsonType.label'),
('983a9ad4-e65a-46fe-a21d-8b21561da769', 'locale', 'user.attribute'),
('983a9ad4-e65a-46fe-a21d-8b21561da769', 'true', 'userinfo.token.claim'),
('9f30140c-e577-443f-becb-a5e4217225ba', 'true', 'access.token.claim'),
('9f30140c-e577-443f-becb-a5e4217225ba', 'picture', 'claim.name'),
('9f30140c-e577-443f-becb-a5e4217225ba', 'true', 'id.token.claim'),
('9f30140c-e577-443f-becb-a5e4217225ba', 'String', 'jsonType.label'),
('9f30140c-e577-443f-becb-a5e4217225ba', 'picture', 'user.attribute'),
('9f30140c-e577-443f-becb-a5e4217225ba', 'true', 'userinfo.token.claim'),
('a841f7bf-bf60-4971-9789-35312889975f', 'true', 'access.token.claim'),
('a841f7bf-bf60-4971-9789-35312889975f', 'profile', 'claim.name'),
('a841f7bf-bf60-4971-9789-35312889975f', 'true', 'id.token.claim'),
('a841f7bf-bf60-4971-9789-35312889975f', 'String', 'jsonType.label'),
('a841f7bf-bf60-4971-9789-35312889975f', 'profile', 'user.attribute'),
('a841f7bf-bf60-4971-9789-35312889975f', 'true', 'userinfo.token.claim'),
('b867abae-d235-4b3c-b451-16297ecbc0a0', 'true', 'access.token.claim'),
('b867abae-d235-4b3c-b451-16297ecbc0a0', 'given_name', 'claim.name'),
('b867abae-d235-4b3c-b451-16297ecbc0a0', 'true', 'id.token.claim'),
('b867abae-d235-4b3c-b451-16297ecbc0a0', 'String', 'jsonType.label'),
('b867abae-d235-4b3c-b451-16297ecbc0a0', 'firstName', 'user.attribute'),
('b867abae-d235-4b3c-b451-16297ecbc0a0', 'true', 'userinfo.token.claim'),
('bae8ec06-ce1e-4b98-8a20-4f6753c1d43c', 'true', 'access.token.claim'),
('bae8ec06-ce1e-4b98-8a20-4f6753c1d43c', 'email_verified', 'claim.name'),
('bae8ec06-ce1e-4b98-8a20-4f6753c1d43c', 'true', 'id.token.claim'),
('bae8ec06-ce1e-4b98-8a20-4f6753c1d43c', 'boolean', 'jsonType.label'),
('bae8ec06-ce1e-4b98-8a20-4f6753c1d43c', 'emailVerified', 'user.attribute'),
('bae8ec06-ce1e-4b98-8a20-4f6753c1d43c', 'true', 'userinfo.token.claim'),
('bc93871d-d550-465b-96e8-f7a1d7eafe4e', 'true', 'access.token.claim'),
('bc93871d-d550-465b-96e8-f7a1d7eafe4e', 'zoneinfo', 'claim.name'),
('bc93871d-d550-465b-96e8-f7a1d7eafe4e', 'true', 'id.token.claim'),
('bc93871d-d550-465b-96e8-f7a1d7eafe4e', 'String', 'jsonType.label'),
('bc93871d-d550-465b-96e8-f7a1d7eafe4e', 'zoneinfo', 'user.attribute'),
('bc93871d-d550-465b-96e8-f7a1d7eafe4e', 'true', 'userinfo.token.claim'),
('bcc1c196-8e31-4b76-9ab2-49bac770e7eb', 'Role', 'attribute.name'),
('bcc1c196-8e31-4b76-9ab2-49bac770e7eb', 'Basic', 'attribute.nameformat'),
('bcc1c196-8e31-4b76-9ab2-49bac770e7eb', 'false', 'single'),
('bd7d7c3a-cc2a-4179-a089-33294f767531', 'true', 'access.token.claim'),
('bd7d7c3a-cc2a-4179-a089-33294f767531', 'clientId', 'claim.name'),
('bd7d7c3a-cc2a-4179-a089-33294f767531', 'true', 'id.token.claim'),
('bd7d7c3a-cc2a-4179-a089-33294f767531', 'String', 'jsonType.label'),
('bd7d7c3a-cc2a-4179-a089-33294f767531', 'clientId', 'user.session.note'),
('bf1d6736-c40b-4717-9e22-6ea7da12d29f', 'true', 'access.token.claim'),
('bf1d6736-c40b-4717-9e22-6ea7da12d29f', 'phone_number', 'claim.name'),
('bf1d6736-c40b-4717-9e22-6ea7da12d29f', 'true', 'id.token.claim'),
('bf1d6736-c40b-4717-9e22-6ea7da12d29f', 'String', 'jsonType.label'),
('bf1d6736-c40b-4717-9e22-6ea7da12d29f', 'phoneNumber', 'user.attribute'),
('bf1d6736-c40b-4717-9e22-6ea7da12d29f', 'true', 'userinfo.token.claim'),
('bf2c56d2-d2e7-493e-b815-879caa762b57', 'true', 'access.token.claim'),
('bf2c56d2-d2e7-493e-b815-879caa762b57', 'realm_access.roles', 'claim.name'),
('bf2c56d2-d2e7-493e-b815-879caa762b57', 'String', 'jsonType.label'),
('bf2c56d2-d2e7-493e-b815-879caa762b57', 'true', 'multivalued'),
('bf2c56d2-d2e7-493e-b815-879caa762b57', 'foo', 'user.attribute'),
('c0408df8-1dfa-41d4-8128-076bb1bb63c0', 'true', 'access.token.claim'),
('c0408df8-1dfa-41d4-8128-076bb1bb63c0', 'realm_access.roles', 'claim.name'),
('c0408df8-1dfa-41d4-8128-076bb1bb63c0', 'String', 'jsonType.label'),
('c0408df8-1dfa-41d4-8128-076bb1bb63c0', 'true', 'multivalued'),
('c0408df8-1dfa-41d4-8128-076bb1bb63c0', 'foo', 'user.attribute'),
('cd654195-8216-4711-a4f2-5e65b8e337bf', 'true', 'access.token.claim'),
('cd654195-8216-4711-a4f2-5e65b8e337bf', 'phone_number', 'claim.name'),
('cd654195-8216-4711-a4f2-5e65b8e337bf', 'true', 'id.token.claim'),
('cd654195-8216-4711-a4f2-5e65b8e337bf', 'String', 'jsonType.label'),
('cd654195-8216-4711-a4f2-5e65b8e337bf', 'phoneNumber', 'user.attribute'),
('cd654195-8216-4711-a4f2-5e65b8e337bf', 'true', 'userinfo.token.claim'),
('d24b82e0-657a-442f-9cec-39b8eae22bcb', 'true', 'access.token.claim'),
('d24b82e0-657a-442f-9cec-39b8eae22bcb', 'preferred_username', 'claim.name'),
('d24b82e0-657a-442f-9cec-39b8eae22bcb', 'true', 'id.token.claim'),
('d24b82e0-657a-442f-9cec-39b8eae22bcb', 'String', 'jsonType.label'),
('d24b82e0-657a-442f-9cec-39b8eae22bcb', 'username', 'user.attribute'),
('d24b82e0-657a-442f-9cec-39b8eae22bcb', 'true', 'userinfo.token.claim'),
('d6a9ea9a-7392-47dd-8af2-ba87fd12b257', 'true', 'access.token.claim'),
('d6a9ea9a-7392-47dd-8af2-ba87fd12b257', 'locale', 'claim.name'),
('d6a9ea9a-7392-47dd-8af2-ba87fd12b257', 'true', 'id.token.claim'),
('d6a9ea9a-7392-47dd-8af2-ba87fd12b257', 'String', 'jsonType.label'),
('d6a9ea9a-7392-47dd-8af2-ba87fd12b257', 'locale', 'user.attribute'),
('d6a9ea9a-7392-47dd-8af2-ba87fd12b257', 'true', 'userinfo.token.claim'),
('dc629e5d-2364-4101-929d-478f58b759a3', 'true', 'access.token.claim'),
('dc629e5d-2364-4101-929d-478f58b759a3', 'clientHost', 'claim.name'),
('dc629e5d-2364-4101-929d-478f58b759a3', 'true', 'id.token.claim'),
('dc629e5d-2364-4101-929d-478f58b759a3', 'String', 'jsonType.label'),
('dc629e5d-2364-4101-929d-478f58b759a3', 'clientHost', 'user.session.note'),
('de12fb8a-206b-4e40-86be-acfd01007e1e', 'true', 'access.token.claim'),
('de12fb8a-206b-4e40-86be-acfd01007e1e', 'website', 'claim.name'),
('de12fb8a-206b-4e40-86be-acfd01007e1e', 'true', 'id.token.claim'),
('de12fb8a-206b-4e40-86be-acfd01007e1e', 'String', 'jsonType.label'),
('de12fb8a-206b-4e40-86be-acfd01007e1e', 'website', 'user.attribute'),
('de12fb8a-206b-4e40-86be-acfd01007e1e', 'true', 'userinfo.token.claim'),
('e0316716-65c9-467c-bdb3-adaa28f1cbb5', 'true', 'access.token.claim'),
('e0316716-65c9-467c-bdb3-adaa28f1cbb5', 'groups', 'claim.name'),
('e0316716-65c9-467c-bdb3-adaa28f1cbb5', 'true', 'id.token.claim'),
('e0316716-65c9-467c-bdb3-adaa28f1cbb5', 'String', 'jsonType.label'),
('e0316716-65c9-467c-bdb3-adaa28f1cbb5', 'true', 'multivalued'),
('e0316716-65c9-467c-bdb3-adaa28f1cbb5', 'foo', 'user.attribute'),
('e89a0b1a-c496-485b-8427-c30217dfa86d', 'true', 'access.token.claim'),
('e89a0b1a-c496-485b-8427-c30217dfa86d', 'locale', 'claim.name'),
('e89a0b1a-c496-485b-8427-c30217dfa86d', 'true', 'id.token.claim'),
('e89a0b1a-c496-485b-8427-c30217dfa86d', 'String', 'jsonType.label'),
('e89a0b1a-c496-485b-8427-c30217dfa86d', 'locale', 'user.attribute'),
('e89a0b1a-c496-485b-8427-c30217dfa86d', 'true', 'userinfo.token.claim'),
('ea846db7-7564-42b4-b603-39b1e73d7ddc', 'true', 'access.token.claim'),
('ea846db7-7564-42b4-b603-39b1e73d7ddc', 'nickname', 'claim.name'),
('ea846db7-7564-42b4-b603-39b1e73d7ddc', 'true', 'id.token.claim'),
('ea846db7-7564-42b4-b603-39b1e73d7ddc', 'String', 'jsonType.label'),
('ea846db7-7564-42b4-b603-39b1e73d7ddc', 'nickname', 'user.attribute'),
('ea846db7-7564-42b4-b603-39b1e73d7ddc', 'true', 'userinfo.token.claim'),
('ebb002f2-c994-428d-a026-99d818417079', 'true', 'access.token.claim'),
('ebb002f2-c994-428d-a026-99d818417079', 'updated_at', 'claim.name'),
('ebb002f2-c994-428d-a026-99d818417079', 'true', 'id.token.claim'),
('ebb002f2-c994-428d-a026-99d818417079', 'String', 'jsonType.label'),
('ebb002f2-c994-428d-a026-99d818417079', 'updatedAt', 'user.attribute'),
('ebb002f2-c994-428d-a026-99d818417079', 'true', 'userinfo.token.claim'),
('ec7d2221-e920-44e2-ab0d-f37bd06f7909', 'true', 'access.token.claim'),
('ec7d2221-e920-44e2-ab0d-f37bd06f7909', 'locale', 'claim.name'),
('ec7d2221-e920-44e2-ab0d-f37bd06f7909', 'true', 'id.token.claim'),
('ec7d2221-e920-44e2-ab0d-f37bd06f7909', 'String', 'jsonType.label'),
('ec7d2221-e920-44e2-ab0d-f37bd06f7909', 'locale', 'user.attribute'),
('ec7d2221-e920-44e2-ab0d-f37bd06f7909', 'true', 'userinfo.token.claim'),
('eef3bf36-5797-4223-9b70-14d50b334a25', 'true', 'access.token.claim'),
('eef3bf36-5797-4223-9b70-14d50b334a25', 'website', 'claim.name'),
('eef3bf36-5797-4223-9b70-14d50b334a25', 'true', 'id.token.claim'),
('eef3bf36-5797-4223-9b70-14d50b334a25', 'String', 'jsonType.label'),
('eef3bf36-5797-4223-9b70-14d50b334a25', 'website', 'user.attribute'),
('eef3bf36-5797-4223-9b70-14d50b334a25', 'true', 'userinfo.token.claim'),
('efead72a-4516-405c-a660-16d49a6ccba9', 'true', 'access.token.claim'),
('efead72a-4516-405c-a660-16d49a6ccba9', 'upn', 'claim.name'),
('efead72a-4516-405c-a660-16d49a6ccba9', 'true', 'id.token.claim'),
('efead72a-4516-405c-a660-16d49a6ccba9', 'String', 'jsonType.label'),
('efead72a-4516-405c-a660-16d49a6ccba9', 'username', 'user.attribute'),
('efead72a-4516-405c-a660-16d49a6ccba9', 'true', 'userinfo.token.claim'),
('f1c429f2-f010-47dd-aea8-c93abd56c897', 'true', 'access.token.claim'),
('f1c429f2-f010-47dd-aea8-c93abd56c897', 'profile', 'claim.name'),
('f1c429f2-f010-47dd-aea8-c93abd56c897', 'true', 'id.token.claim'),
('f1c429f2-f010-47dd-aea8-c93abd56c897', 'String', 'jsonType.label'),
('f1c429f2-f010-47dd-aea8-c93abd56c897', 'profile', 'user.attribute'),
('f1c429f2-f010-47dd-aea8-c93abd56c897', 'true', 'userinfo.token.claim'),
('fa4f19dd-c672-414f-bbf5-e9d4fd00bbd4', 'true', 'access.token.claim'),
('fa4f19dd-c672-414f-bbf5-e9d4fd00bbd4', 'resource_access.${client_id}.roles', 'claim.name'),
('fa4f19dd-c672-414f-bbf5-e9d4fd00bbd4', 'String', 'jsonType.label'),
('fa4f19dd-c672-414f-bbf5-e9d4fd00bbd4', 'true', 'multivalued'),
('fa4f19dd-c672-414f-bbf5-e9d4fd00bbd4', 'foo', 'user.attribute');

-- --------------------------------------------------------

--
-- Estrutura para tabela `REALM`
--

CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` varchar(2550) DEFAULT NULL,
  `REGISTRATION_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `RESET_PASSWORD_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `SOCIAL` bit(1) NOT NULL DEFAULT b'0',
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` bit(1) NOT NULL DEFAULT b'0',
  `VERIFY_EMAIL` bit(1) NOT NULL DEFAULT b'0',
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `ADMIN_EVENTS_DETAILS_ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `EDIT_USERNAME_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `OTP_POLICY_COUNTER` int(11) DEFAULT '0',
  `OTP_POLICY_WINDOW` int(11) DEFAULT '1',
  `OTP_POLICY_PERIOD` int(11) DEFAULT '30',
  `OTP_POLICY_DIGITS` int(11) DEFAULT '6',
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int(11) DEFAULT '0',
  `REVOKE_REFRESH_TOKEN` bit(1) NOT NULL DEFAULT b'0',
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT '0',
  `LOGIN_WITH_EMAIL_ALLOWED` bit(1) NOT NULL DEFAULT b'1',
  `DUPLICATE_EMAILS_ALLOWED` bit(1) NOT NULL DEFAULT b'0',
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT '0',
  `ALLOW_USER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int(11) NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int(11) NOT NULL,
  `DEFAULT_ROLE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `REALM`
--

INSERT INTO `REALM` (`ID`, `ACCESS_CODE_LIFESPAN`, `USER_ACTION_LIFESPAN`, `ACCESS_TOKEN_LIFESPAN`, `ACCOUNT_THEME`, `ADMIN_THEME`, `EMAIL_THEME`, `ENABLED`, `EVENTS_ENABLED`, `EVENTS_EXPIRATION`, `LOGIN_THEME`, `NAME`, `NOT_BEFORE`, `PASSWORD_POLICY`, `REGISTRATION_ALLOWED`, `REMEMBER_ME`, `RESET_PASSWORD_ALLOWED`, `SOCIAL`, `SSL_REQUIRED`, `SSO_IDLE_TIMEOUT`, `SSO_MAX_LIFESPAN`, `UPDATE_PROFILE_ON_SOC_LOGIN`, `VERIFY_EMAIL`, `MASTER_ADMIN_CLIENT`, `LOGIN_LIFESPAN`, `INTERNATIONALIZATION_ENABLED`, `DEFAULT_LOCALE`, `REG_EMAIL_AS_USERNAME`, `ADMIN_EVENTS_ENABLED`, `ADMIN_EVENTS_DETAILS_ENABLED`, `EDIT_USERNAME_ALLOWED`, `OTP_POLICY_COUNTER`, `OTP_POLICY_WINDOW`, `OTP_POLICY_PERIOD`, `OTP_POLICY_DIGITS`, `OTP_POLICY_ALG`, `OTP_POLICY_TYPE`, `BROWSER_FLOW`, `REGISTRATION_FLOW`, `DIRECT_GRANT_FLOW`, `RESET_CREDENTIALS_FLOW`, `CLIENT_AUTH_FLOW`, `OFFLINE_SESSION_IDLE_TIMEOUT`, `REVOKE_REFRESH_TOKEN`, `ACCESS_TOKEN_LIFE_IMPLICIT`, `LOGIN_WITH_EMAIL_ALLOWED`, `DUPLICATE_EMAILS_ALLOWED`, `DOCKER_AUTH_FLOW`, `REFRESH_TOKEN_MAX_REUSE`, `ALLOW_USER_MANAGED_ACCESS`, `SSO_MAX_LIFESPAN_REMEMBER_ME`, `SSO_IDLE_TIMEOUT_REMEMBER_ME`, `DEFAULT_ROLE`) VALUES
('master', 60, 300, 60, NULL, NULL, NULL, b'1', b'0', 0, NULL, 'master', 0, NULL, b'0', b'0', b'0', b'0', 'EXTERNAL', 1800, 36000, b'0', b'0', '5060c0c4-3d87-421e-b3e5-d5f7ab7ecc54', 1800, b'0', NULL, b'0', b'0', b'0', b'0', 0, 1, 30, 6, 'HmacSHA1', 'totp', 'f95fe450-c21d-40b1-868c-f0089a3efe4c', '8d22c9c9-2475-4ab0-93db-b1ba856f2c7c', '18e08c3f-22a5-423f-8e6c-ad48b5b0d424', '374327c1-416a-4baa-b719-aea7e15f2405', 'eaa2d27b-b47d-4fa4-9bf9-17923f27d519', 2592000, b'0', 900, b'1', b'0', '1f8f3ec0-f170-44f1-8dfd-9e382f791b60', 0, b'0', 0, 0, '431782fc-fa38-4841-82f4-e63326fd239e'),
('pdz', 60, 300, 300, NULL, NULL, NULL, b'1', b'0', 0, NULL, 'pdz', 0, NULL, b'0', b'0', b'0', b'0', 'NONE', 1800, 36000, b'0', b'0', '03723fb9-120e-453d-b715-54158a44da7c', 1800, b'0', NULL, b'0', b'0', b'0', b'0', 0, 1, 30, 6, 'HmacSHA1', 'totp', '89f22d50-346c-4a92-b1d1-3b4c094384f5', 'b654a186-7648-4eee-9b42-70064d9a10ad', 'a3190755-b374-4198-8199-4a303ce95b36', '3c3f46e4-1006-4098-987f-fc668af7a46e', '93be416e-94e8-4bb4-a6ea-11d9fdfd034e', 2592000, b'0', 900, b'1', b'0', '22eab2ad-cbf2-42be-be43-674498de1a9f', 0, b'0', 0, 0, '7ee5edad-4704-40b8-9c51-7a857b6595f7');

-- --------------------------------------------------------

--
-- Estrutura para tabela `REALM_ATTRIBUTE`
--

CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `REALM_ATTRIBUTE`
--

INSERT INTO `REALM_ATTRIBUTE` (`NAME`, `REALM_ID`, `VALUE`) VALUES
('actionTokenGeneratedByAdminLifespan', 'pdz', '43200'),
('actionTokenGeneratedByUserLifespan', 'pdz', '300'),
('bruteForceProtected', 'master', 'false'),
('bruteForceProtected', 'pdz', 'false'),
('cibaAuthRequestedUserHint', 'pdz', 'login_hint'),
('cibaBackchannelTokenDeliveryMode', 'pdz', 'poll'),
('cibaExpiresIn', 'pdz', '120'),
('cibaInterval', 'pdz', '5'),
('client-policies.policies', 'master', '{\"policies\":[{\"name\":\"builtin-default-policy\",\"description\":\"The built-in default policy applied to all clients.\",\"builtin\":true,\"enable\":false,\"conditions\":[{\"anyclient-condition\":{}}],\"profiles\":[\"builtin-default-profile\"]}]}'),
('client-policies.profiles', 'master', '{\"profiles\":[{\"name\":\"builtin-default-profile\",\"description\":\"The built-in default profile for enforcing basic security level to clients.\",\"builtin\":true,\"executors\":[{\"secure-session-enforce-executor\":{}}]}]}'),
('clientOfflineSessionIdleTimeout', 'pdz', '0'),
('clientOfflineSessionMaxLifespan', 'pdz', '0'),
('clientSessionIdleTimeout', 'pdz', '0'),
('clientSessionMaxLifespan', 'pdz', '0'),
('defaultSignatureAlgorithm', 'master', 'RS256'),
('defaultSignatureAlgorithm', 'pdz', 'RS256'),
('displayName', 'master', 'Keycloak'),
('displayNameHtml', 'master', '<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),
('failureFactor', 'master', '30'),
('failureFactor', 'pdz', '30'),
('frontendUrl', 'pdz', 'http://keycloak:8080/auth'),
('maxDeltaTimeSeconds', 'master', '43200'),
('maxDeltaTimeSeconds', 'pdz', '43200'),
('maxFailureWaitSeconds', 'master', '900'),
('maxFailureWaitSeconds', 'pdz', '900'),
('minimumQuickLoginWaitSeconds', 'master', '60'),
('minimumQuickLoginWaitSeconds', 'pdz', '60'),
('oauth2DeviceCodeLifespan', 'pdz', '600'),
('oauth2DevicePollingInterval', 'pdz', '5'),
('offlineSessionMaxLifespan', 'master', '5184000'),
('offlineSessionMaxLifespan', 'pdz', '5184000'),
('offlineSessionMaxLifespanEnabled', 'master', 'false'),
('offlineSessionMaxLifespanEnabled', 'pdz', 'false'),
('permanentLockout', 'master', 'false'),
('permanentLockout', 'pdz', 'false'),
('quickLoginCheckMilliSeconds', 'master', '1000'),
('quickLoginCheckMilliSeconds', 'pdz', '1000'),
('waitIncrementSeconds', 'master', '60'),
('waitIncrementSeconds', 'pdz', '60'),
('webAuthnPolicyAttestationConveyancePreference', 'pdz', 'not specified'),
('webAuthnPolicyAttestationConveyancePreferencePasswordless', 'pdz', 'not specified'),
('webAuthnPolicyAuthenticatorAttachment', 'pdz', 'not specified'),
('webAuthnPolicyAuthenticatorAttachmentPasswordless', 'pdz', 'not specified'),
('webAuthnPolicyAvoidSameAuthenticatorRegister', 'pdz', 'false'),
('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless', 'pdz', 'false'),
('webAuthnPolicyCreateTimeout', 'pdz', '0'),
('webAuthnPolicyCreateTimeoutPasswordless', 'pdz', '0'),
('webAuthnPolicyRequireResidentKey', 'pdz', 'not specified'),
('webAuthnPolicyRequireResidentKeyPasswordless', 'pdz', 'not specified'),
('webAuthnPolicyRpEntityName', 'pdz', 'keycloak'),
('webAuthnPolicyRpEntityNamePasswordless', 'pdz', 'keycloak'),
('webAuthnPolicyRpId', 'pdz', ''),
('webAuthnPolicyRpIdPasswordless', 'pdz', ''),
('webAuthnPolicySignatureAlgorithms', 'pdz', 'ES256'),
('webAuthnPolicySignatureAlgorithmsPasswordless', 'pdz', 'ES256'),
('webAuthnPolicyUserVerificationRequirement', 'pdz', 'not specified'),
('webAuthnPolicyUserVerificationRequirementPasswordless', 'pdz', 'not specified'),
('_browser_header.contentSecurityPolicy', 'master', 'frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),
('_browser_header.contentSecurityPolicy', 'pdz', 'frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),
('_browser_header.contentSecurityPolicyReportOnly', 'master', ''),
('_browser_header.contentSecurityPolicyReportOnly', 'pdz', ''),
('_browser_header.strictTransportSecurity', 'master', 'max-age=31536000; includeSubDomains'),
('_browser_header.strictTransportSecurity', 'pdz', 'max-age=31536000; includeSubDomains'),
('_browser_header.xContentTypeOptions', 'master', 'nosniff'),
('_browser_header.xContentTypeOptions', 'pdz', 'nosniff'),
('_browser_header.xFrameOptions', 'master', 'SAMEORIGIN'),
('_browser_header.xFrameOptions', 'pdz', 'SAMEORIGIN'),
('_browser_header.xRobotsTag', 'master', 'none'),
('_browser_header.xRobotsTag', 'pdz', 'none'),
('_browser_header.xXSSProtection', 'master', '1; mode=block'),
('_browser_header.xXSSProtection', 'pdz', '1; mode=block');

-- --------------------------------------------------------

--
-- Estrutura para tabela `REALM_DEFAULT_GROUPS`
--

CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `REALM_ENABLED_EVENT_TYPES`
--

CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `REALM_EVENTS_LISTENERS`
--

CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `REALM_EVENTS_LISTENERS`
--

INSERT INTO `REALM_EVENTS_LISTENERS` (`REALM_ID`, `VALUE`) VALUES
('master', 'jboss-logging'),
('pdz', 'jboss-logging');

-- --------------------------------------------------------

--
-- Estrutura para tabela `REALM_LOCALIZATIONS`
--

CREATE TABLE `REALM_LOCALIZATIONS` (
  `REALM_ID` varchar(255) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `TEXTS` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `REALM_REQUIRED_CREDENTIAL`
--

CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` bit(1) NOT NULL DEFAULT b'0',
  `SECRET` bit(1) NOT NULL DEFAULT b'0',
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `REALM_REQUIRED_CREDENTIAL`
--

INSERT INTO `REALM_REQUIRED_CREDENTIAL` (`TYPE`, `FORM_LABEL`, `INPUT`, `SECRET`, `REALM_ID`) VALUES
('password', 'password', b'1', b'1', 'master'),
('password', 'password', b'1', b'1', 'pdz');

-- --------------------------------------------------------

--
-- Estrutura para tabela `REALM_SMTP_CONFIG`
--

CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `REALM_SUPPORTED_LOCALES`
--

CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `REDIRECT_URIS`
--

CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `REDIRECT_URIS`
--

INSERT INTO `REDIRECT_URIS` (`CLIENT_ID`, `VALUE`) VALUES
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', '/realms/pdz/account/*'),
('237adfce-1bee-4ef5-944d-4a0299b18929', '/admin/pdz/console/*'),
('7142407d-7cbc-44fc-adba-85e8ecd6ed23', '/realms/master/account/*'),
('87ece354-e588-4e04-bf35-cb2735739493', '/realms/pdz/account/*'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', '/admin/master/console/*'),
('f97661fa-9873-4d5f-94d9-8afe9de09838', '/realms/master/account/*');

-- --------------------------------------------------------

--
-- Estrutura para tabela `REQUIRED_ACTION_CONFIG`
--

CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `REQUIRED_ACTION_PROVIDER`
--

CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `DEFAULT_ACTION` bit(1) NOT NULL DEFAULT b'0',
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `REQUIRED_ACTION_PROVIDER`
--

INSERT INTO `REQUIRED_ACTION_PROVIDER` (`ID`, `ALIAS`, `NAME`, `REALM_ID`, `ENABLED`, `DEFAULT_ACTION`, `PROVIDER_ID`, `PRIORITY`) VALUES
('035afc2e-3241-4d19-a315-ebc1aa2d5e73', 'CONFIGURE_TOTP', 'Configure OTP', 'pdz', b'1', b'0', 'CONFIGURE_TOTP', 10),
('2e9b3fa2-23ac-4ff5-b5a6-678cbed3999b', 'UPDATE_PROFILE', 'Update Profile', 'master', b'1', b'0', 'UPDATE_PROFILE', 40),
('312f7b02-3d95-44fc-849f-c88a42c512c9', 'delete_account', 'Delete Account', 'master', b'0', b'0', 'delete_account', 60),
('34003e29-7a37-4bf3-94b1-bdb2bdd38917', 'terms_and_conditions', 'Terms and Conditions', 'master', b'0', b'0', 'terms_and_conditions', 20),
('46c02950-373c-4009-adac-c9624cb49e1b', 'UPDATE_PASSWORD', 'Update Password', 'pdz', b'1', b'0', 'UPDATE_PASSWORD', 30),
('6ecbb231-83e6-4aef-bc3d-79a2a23d5973', 'VERIFY_EMAIL', 'Verify Email', 'master', b'1', b'0', 'VERIFY_EMAIL', 50),
('720fb464-1068-48f8-94c3-1163e1249697', 'UPDATE_PASSWORD', 'Update Password', 'master', b'1', b'0', 'UPDATE_PASSWORD', 30),
('8d988288-14bf-415b-be6e-4bab5f8578ca', 'update_user_locale', 'Update User Locale', 'pdz', b'1', b'0', 'update_user_locale', 1000),
('8e36c70a-1fbb-4ace-8abf-f3f348b1c66b', 'CONFIGURE_TOTP', 'Configure OTP', 'master', b'1', b'0', 'CONFIGURE_TOTP', 10),
('b33c8ea0-2766-4e95-b1fd-6d336100827e', 'UPDATE_PROFILE', 'Update Profile', 'pdz', b'1', b'0', 'UPDATE_PROFILE', 40),
('bb8be25b-6fdd-4a98-a993-61997b335e31', 'update_user_locale', 'Update User Locale', 'master', b'1', b'0', 'update_user_locale', 1000),
('be335d19-5ef6-4235-b441-e12cc2544a9e', 'delete_account', 'Delete Account', 'pdz', b'0', b'0', 'delete_account', 60),
('e8f3f853-9104-41d4-9060-36ad38ffc1aa', 'VERIFY_EMAIL', 'Verify Email', 'pdz', b'1', b'0', 'VERIFY_EMAIL', 50),
('fec7d979-54c5-48e6-bc91-cb11d80cf214', 'terms_and_conditions', 'Terms and Conditions', 'pdz', b'0', b'0', 'terms_and_conditions', 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESOURCE_ATTRIBUTE`
--

CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESOURCE_POLICY`
--

CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESOURCE_SCOPE`
--

CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESOURCE_SERVER`
--

CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` bit(1) NOT NULL DEFAULT b'0',
  `POLICY_ENFORCE_MODE` varchar(15) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESOURCE_SERVER_PERM_TICKET`
--

CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) NOT NULL,
  `GRANTED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESOURCE_SERVER_POLICY`
--

CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` varchar(20) DEFAULT NULL,
  `LOGIC` varchar(20) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESOURCE_SERVER_RESOURCE`
--

CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` bit(1) NOT NULL DEFAULT b'0',
  `DISPLAY_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESOURCE_SERVER_SCOPE`
--

CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `RESOURCE_URIS`
--

CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ROLE_ATTRIBUTE`
--

CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `SCOPE_MAPPING`
--

CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `SCOPE_MAPPING`
--

INSERT INTO `SCOPE_MAPPING` (`CLIENT_ID`, `ROLE_ID`) VALUES
('f97661fa-9873-4d5f-94d9-8afe9de09838', '5bdf874d-e5f2-4cfb-86a5-1dd95d64b163'),
('0d69e5f3-ae77-4382-8e69-36f6d371c3fb', '72021b32-9bc4-471b-8e03-d33134588874');

-- --------------------------------------------------------

--
-- Estrutura para tabela `SCOPE_POLICY`
--

CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USERNAME_LOGIN_FAILURE`
--

CREATE TABLE `USERNAME_LOGIN_FAILURE` (
  `REALM_ID` varchar(36) NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` int(11) DEFAULT NULL,
  `LAST_FAILURE` bigint(20) DEFAULT NULL,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_FAILURES` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_ATTRIBUTE`
--

CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_CONSENT`
--

CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_CONSENT_CLIENT_SCOPE`
--

CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_ENTITY`
--

CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` bit(1) NOT NULL DEFAULT b'0',
  `ENABLED` bit(1) NOT NULL DEFAULT b'0',
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `USER_ENTITY`
--

INSERT INTO `USER_ENTITY` (`ID`, `EMAIL`, `EMAIL_CONSTRAINT`, `EMAIL_VERIFIED`, `ENABLED`, `FEDERATION_LINK`, `FIRST_NAME`, `LAST_NAME`, `REALM_ID`, `USERNAME`, `CREATED_TIMESTAMP`, `SERVICE_ACCOUNT_CLIENT_LINK`, `NOT_BEFORE`) VALUES
('036652fd-9ce6-45db-95af-7e076d55cf11', 'admin@admin.com', 'admin@admin.com', b'1', b'1', NULL, NULL, NULL, 'pdz', 'admin@admin.com', 1687881710990, NULL, 0),
('2051ce15-80d9-4cbf-842a-375091a90185', NULL, '0921241e-b591-49d0-9fa0-f4cd90a0bb88', b'0', b'1', NULL, NULL, NULL, 'pdz', 'service-account-pdz-app-admin', 1687882159953, '3b9fe014-da15-4287-99e4-2c64c45bb1bc', 0),
('4af880b3-e9bd-45f8-b642-8598b53a5cfb', NULL, '0ff9cb28-4a60-44ec-b3c3-aa9553d2982d', b'0', b'1', NULL, NULL, NULL, 'pdz', 'service-account-pdz-app-user', 1687880949315, 'fcdac5cd-126b-45d5-a1f4-0e22203b54c4', 0),
('8cfaf64f-1b16-46db-82b9-152752959338', 'user@user.com', 'user@user.com', b'1', b'1', NULL, NULL, NULL, 'pdz', 'user@user.com', 1687881761171, NULL, 0),
('fd3b852d-3bc4-4c91-aaf5-f8437dc32878', NULL, '7def9634-a671-4105-aff4-cfffb968c5c1', b'0', b'1', NULL, NULL, NULL, 'master', 'keycloak', 1687879681276, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_FEDERATION_CONFIG`
--

CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_FEDERATION_MAPPER`
--

CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_FEDERATION_MAPPER_CONFIG`
--

CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_FEDERATION_PROVIDER`
--

CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int(11) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int(11) DEFAULT NULL,
  `LAST_SYNC` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_GROUP_MEMBERSHIP`
--

CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_REQUIRED_ACTION`
--

CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_ROLE_MAPPING`
--

CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `USER_ROLE_MAPPING`
--

INSERT INTO `USER_ROLE_MAPPING` (`ROLE_ID`, `USER_ID`) VALUES
('7ee5edad-4704-40b8-9c51-7a857b6595f7', '036652fd-9ce6-45db-95af-7e076d55cf11'),
('8d954cbe-560b-406b-9a31-9bbc25428489', '036652fd-9ce6-45db-95af-7e076d55cf11'),
('7ee5edad-4704-40b8-9c51-7a857b6595f7', '2051ce15-80d9-4cbf-842a-375091a90185'),
('8d954cbe-560b-406b-9a31-9bbc25428489', '2051ce15-80d9-4cbf-842a-375091a90185'),
('7ee5edad-4704-40b8-9c51-7a857b6595f7', '4af880b3-e9bd-45f8-b642-8598b53a5cfb'),
('7ee5edad-4704-40b8-9c51-7a857b6595f7', '8cfaf64f-1b16-46db-82b9-152752959338'),
('431782fc-fa38-4841-82f4-e63326fd239e', 'fd3b852d-3bc4-4c91-aaf5-f8437dc32878'),
('8ff07d65-7171-4e80-83e7-e6a52ad81a50', 'fd3b852d-3bc4-4c91-aaf5-f8437dc32878');

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_SESSION`
--

CREATE TABLE `USER_SESSION` (
  `ID` varchar(36) NOT NULL,
  `AUTH_METHOD` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) DEFAULT NULL,
  `LOGIN_USERNAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `REMEMBER_ME` bit(1) NOT NULL DEFAULT b'0',
  `STARTED` int(11) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `USER_SESSION_STATE` int(11) DEFAULT NULL,
  `BROKER_SESSION_ID` varchar(255) DEFAULT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `USER_SESSION_NOTE`
--

CREATE TABLE `USER_SESSION_NOTE` (
  `USER_SESSION` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `WEB_ORIGINS`
--

CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `WEB_ORIGINS`
--

INSERT INTO `WEB_ORIGINS` (`CLIENT_ID`, `VALUE`) VALUES
('237adfce-1bee-4ef5-944d-4a0299b18929', '+'),
('d2dd98b6-78c2-47d8-b048-113c82dff286', '+');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ADMIN_EVENT_ENTITY`
--
ALTER TABLE `ADMIN_EVENT_ENTITY`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `ASSOCIATED_POLICY`
--
ALTER TABLE `ASSOCIATED_POLICY`
  ADD PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  ADD KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`);

--
-- Índices de tabela `AUTHENTICATION_EXECUTION`
--
ALTER TABLE `AUTHENTICATION_EXECUTION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  ADD KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`);

--
-- Índices de tabela `AUTHENTICATION_FLOW`
--
ALTER TABLE `AUTHENTICATION_FLOW`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`);

--
-- Índices de tabela `AUTHENTICATOR_CONFIG`
--
ALTER TABLE `AUTHENTICATOR_CONFIG`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`);

--
-- Índices de tabela `AUTHENTICATOR_CONFIG_ENTRY`
--
ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY`
  ADD PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`);

--
-- Índices de tabela `BROKER_LINK`
--
ALTER TABLE `BROKER_LINK`
  ADD PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`);

--
-- Índices de tabela `CLIENT`
--
ALTER TABLE `CLIENT`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  ADD KEY `IDX_CLIENT_ID` (`CLIENT_ID`);

--
-- Índices de tabela `CLIENT_ATTRIBUTES`
--
ALTER TABLE `CLIENT_ATTRIBUTES`
  ADD PRIMARY KEY (`CLIENT_ID`,`NAME`);

--
-- Índices de tabela `CLIENT_AUTH_FLOW_BINDINGS`
--
ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS`
  ADD PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`);

--
-- Índices de tabela `CLIENT_INITIAL_ACCESS`
--
ALTER TABLE `CLIENT_INITIAL_ACCESS`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`);

--
-- Índices de tabela `CLIENT_NODE_REGISTRATIONS`
--
ALTER TABLE `CLIENT_NODE_REGISTRATIONS`
  ADD PRIMARY KEY (`CLIENT_ID`,`NAME`);

--
-- Índices de tabela `CLIENT_SCOPE`
--
ALTER TABLE `CLIENT_SCOPE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  ADD KEY `IDX_REALM_CLSCOPE` (`REALM_ID`);

--
-- Índices de tabela `CLIENT_SCOPE_ATTRIBUTES`
--
ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES`
  ADD PRIMARY KEY (`SCOPE_ID`,`NAME`),
  ADD KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`);

--
-- Índices de tabela `CLIENT_SCOPE_CLIENT`
--
ALTER TABLE `CLIENT_SCOPE_CLIENT`
  ADD PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  ADD KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  ADD KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`);

--
-- Índices de tabela `CLIENT_SCOPE_ROLE_MAPPING`
--
ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING`
  ADD PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  ADD KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  ADD KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`);

--
-- Índices de tabela `CLIENT_SESSION`
--
ALTER TABLE `CLIENT_SESSION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_CLIENT_SESSION_SESSION` (`SESSION_ID`);

--
-- Índices de tabela `CLIENT_SESSION_AUTH_STATUS`
--
ALTER TABLE `CLIENT_SESSION_AUTH_STATUS`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`AUTHENTICATOR`);

--
-- Índices de tabela `CLIENT_SESSION_NOTE`
--
ALTER TABLE `CLIENT_SESSION_NOTE`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`NAME`);

--
-- Índices de tabela `CLIENT_SESSION_PROT_MAPPER`
--
ALTER TABLE `CLIENT_SESSION_PROT_MAPPER`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`PROTOCOL_MAPPER_ID`);

--
-- Índices de tabela `CLIENT_SESSION_ROLE`
--
ALTER TABLE `CLIENT_SESSION_ROLE`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`ROLE_ID`);

--
-- Índices de tabela `CLIENT_USER_SESSION_NOTE`
--
ALTER TABLE `CLIENT_USER_SESSION_NOTE`
  ADD PRIMARY KEY (`CLIENT_SESSION`,`NAME`);

--
-- Índices de tabela `COMPONENT`
--
ALTER TABLE `COMPONENT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  ADD KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`);

--
-- Índices de tabela `COMPONENT_CONFIG`
--
ALTER TABLE `COMPONENT_CONFIG`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`);

--
-- Índices de tabela `COMPOSITE_ROLE`
--
ALTER TABLE `COMPOSITE_ROLE`
  ADD PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  ADD KEY `IDX_COMPOSITE` (`COMPOSITE`),
  ADD KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`);

--
-- Índices de tabela `CREDENTIAL`
--
ALTER TABLE `CREDENTIAL`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USER_CREDENTIAL` (`USER_ID`);

--
-- Índices de tabela `DATABASECHANGELOGLOCK`
--
ALTER TABLE `DATABASECHANGELOGLOCK`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `DEFAULT_CLIENT_SCOPE`
--
ALTER TABLE `DEFAULT_CLIENT_SCOPE`
  ADD PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  ADD KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  ADD KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`);

--
-- Índices de tabela `EVENT_ENTITY`
--
ALTER TABLE `EVENT_ENTITY`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`);

--
-- Índices de tabela `FEDERATED_IDENTITY`
--
ALTER TABLE `FEDERATED_IDENTITY`
  ADD PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  ADD KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  ADD KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`);

--
-- Índices de tabela `FEDERATED_USER`
--
ALTER TABLE `FEDERATED_USER`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `FED_USER_ATTRIBUTE`
--
ALTER TABLE `FED_USER_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`);

--
-- Índices de tabela `FED_USER_CONSENT`
--
ALTER TABLE `FED_USER_CONSENT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  ADD KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  ADD KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`);

--
-- Índices de tabela `FED_USER_CONSENT_CL_SCOPE`
--
ALTER TABLE `FED_USER_CONSENT_CL_SCOPE`
  ADD PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`);

--
-- Índices de tabela `FED_USER_CREDENTIAL`
--
ALTER TABLE `FED_USER_CREDENTIAL`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  ADD KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`);

--
-- Índices de tabela `FED_USER_GROUP_MEMBERSHIP`
--
ALTER TABLE `FED_USER_GROUP_MEMBERSHIP`
  ADD PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  ADD KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  ADD KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`);

--
-- Índices de tabela `FED_USER_REQUIRED_ACTION`
--
ALTER TABLE `FED_USER_REQUIRED_ACTION`
  ADD PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  ADD KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  ADD KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`);

--
-- Índices de tabela `FED_USER_ROLE_MAPPING`
--
ALTER TABLE `FED_USER_ROLE_MAPPING`
  ADD PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  ADD KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  ADD KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`);

--
-- Índices de tabela `GROUP_ATTRIBUTE`
--
ALTER TABLE `GROUP_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`);

--
-- Índices de tabela `GROUP_ROLE_MAPPING`
--
ALTER TABLE `GROUP_ROLE_MAPPING`
  ADD PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  ADD KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`);

--
-- Índices de tabela `IDENTITY_PROVIDER`
--
ALTER TABLE `IDENTITY_PROVIDER`
  ADD PRIMARY KEY (`INTERNAL_ID`),
  ADD UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  ADD KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`);

--
-- Índices de tabela `IDENTITY_PROVIDER_CONFIG`
--
ALTER TABLE `IDENTITY_PROVIDER_CONFIG`
  ADD PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`);

--
-- Índices de tabela `IDENTITY_PROVIDER_MAPPER`
--
ALTER TABLE `IDENTITY_PROVIDER_MAPPER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`);

--
-- Índices de tabela `IDP_MAPPER_CONFIG`
--
ALTER TABLE `IDP_MAPPER_CONFIG`
  ADD PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`);

--
-- Índices de tabela `KEYCLOAK_GROUP`
--
ALTER TABLE `KEYCLOAK_GROUP`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`);

--
-- Índices de tabela `KEYCLOAK_ROLE`
--
ALTER TABLE `KEYCLOAK_ROLE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  ADD KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  ADD KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`);

--
-- Índices de tabela `MIGRATION_MODEL`
--
ALTER TABLE `MIGRATION_MODEL`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`);

--
-- Índices de tabela `OFFLINE_CLIENT_SESSION`
--
ALTER TABLE `OFFLINE_CLIENT_SESSION`
  ADD PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  ADD KEY `IDX_US_SESS_ID_ON_CL_SESS` (`USER_SESSION_ID`);

--
-- Índices de tabela `OFFLINE_USER_SESSION`
--
ALTER TABLE `OFFLINE_USER_SESSION`
  ADD PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  ADD KEY `IDX_OFFLINE_USS_CREATEDON` (`CREATED_ON`),
  ADD KEY `IDX_OFFLINE_USS_PRELOAD` (`OFFLINE_FLAG`,`CREATED_ON`,`USER_SESSION_ID`);

--
-- Índices de tabela `POLICY_CONFIG`
--
ALTER TABLE `POLICY_CONFIG`
  ADD PRIMARY KEY (`POLICY_ID`,`NAME`);

--
-- Índices de tabela `PROTOCOL_MAPPER`
--
ALTER TABLE `PROTOCOL_MAPPER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  ADD KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`);

--
-- Índices de tabela `PROTOCOL_MAPPER_CONFIG`
--
ALTER TABLE `PROTOCOL_MAPPER_CONFIG`
  ADD PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`);

--
-- Índices de tabela `REALM`
--
ALTER TABLE `REALM`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  ADD KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`);

--
-- Índices de tabela `REALM_ATTRIBUTE`
--
ALTER TABLE `REALM_ATTRIBUTE`
  ADD PRIMARY KEY (`NAME`,`REALM_ID`),
  ADD KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`);

--
-- Índices de tabela `REALM_DEFAULT_GROUPS`
--
ALTER TABLE `REALM_DEFAULT_GROUPS`
  ADD PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  ADD UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  ADD KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`);

--
-- Índices de tabela `REALM_ENABLED_EVENT_TYPES`
--
ALTER TABLE `REALM_ENABLED_EVENT_TYPES`
  ADD PRIMARY KEY (`REALM_ID`,`VALUE`),
  ADD KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`);

--
-- Índices de tabela `REALM_EVENTS_LISTENERS`
--
ALTER TABLE `REALM_EVENTS_LISTENERS`
  ADD PRIMARY KEY (`REALM_ID`,`VALUE`),
  ADD KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`);

--
-- Índices de tabela `REALM_LOCALIZATIONS`
--
ALTER TABLE `REALM_LOCALIZATIONS`
  ADD PRIMARY KEY (`REALM_ID`,`LOCALE`);

--
-- Índices de tabela `REALM_REQUIRED_CREDENTIAL`
--
ALTER TABLE `REALM_REQUIRED_CREDENTIAL`
  ADD PRIMARY KEY (`REALM_ID`,`TYPE`);

--
-- Índices de tabela `REALM_SMTP_CONFIG`
--
ALTER TABLE `REALM_SMTP_CONFIG`
  ADD PRIMARY KEY (`REALM_ID`,`NAME`);

--
-- Índices de tabela `REALM_SUPPORTED_LOCALES`
--
ALTER TABLE `REALM_SUPPORTED_LOCALES`
  ADD PRIMARY KEY (`REALM_ID`,`VALUE`),
  ADD KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`);

--
-- Índices de tabela `REDIRECT_URIS`
--
ALTER TABLE `REDIRECT_URIS`
  ADD PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  ADD KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`);

--
-- Índices de tabela `REQUIRED_ACTION_CONFIG`
--
ALTER TABLE `REQUIRED_ACTION_CONFIG`
  ADD PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`);

--
-- Índices de tabela `REQUIRED_ACTION_PROVIDER`
--
ALTER TABLE `REQUIRED_ACTION_PROVIDER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`);

--
-- Índices de tabela `RESOURCE_ATTRIBUTE`
--
ALTER TABLE `RESOURCE_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`);

--
-- Índices de tabela `RESOURCE_POLICY`
--
ALTER TABLE `RESOURCE_POLICY`
  ADD PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  ADD KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`);

--
-- Índices de tabela `RESOURCE_SCOPE`
--
ALTER TABLE `RESOURCE_SCOPE`
  ADD PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  ADD KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`);

--
-- Índices de tabela `RESOURCE_SERVER`
--
ALTER TABLE `RESOURCE_SERVER`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `RESOURCE_SERVER_PERM_TICKET`
--
ALTER TABLE `RESOURCE_SERVER_PERM_TICKET`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  ADD KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  ADD KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  ADD KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  ADD KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`);

--
-- Índices de tabela `RESOURCE_SERVER_POLICY`
--
ALTER TABLE `RESOURCE_SERVER_POLICY`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  ADD KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`);

--
-- Índices de tabela `RESOURCE_SERVER_RESOURCE`
--
ALTER TABLE `RESOURCE_SERVER_RESOURCE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  ADD KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`);

--
-- Índices de tabela `RESOURCE_SERVER_SCOPE`
--
ALTER TABLE `RESOURCE_SERVER_SCOPE`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  ADD KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`);

--
-- Índices de tabela `RESOURCE_URIS`
--
ALTER TABLE `RESOURCE_URIS`
  ADD PRIMARY KEY (`RESOURCE_ID`,`VALUE`);

--
-- Índices de tabela `ROLE_ATTRIBUTE`
--
ALTER TABLE `ROLE_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`);

--
-- Índices de tabela `SCOPE_MAPPING`
--
ALTER TABLE `SCOPE_MAPPING`
  ADD PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  ADD KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`);

--
-- Índices de tabela `SCOPE_POLICY`
--
ALTER TABLE `SCOPE_POLICY`
  ADD PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  ADD KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`);

--
-- Índices de tabela `USERNAME_LOGIN_FAILURE`
--
ALTER TABLE `USERNAME_LOGIN_FAILURE`
  ADD PRIMARY KEY (`REALM_ID`,`USERNAME`);

--
-- Índices de tabela `USER_ATTRIBUTE`
--
ALTER TABLE `USER_ATTRIBUTE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USER_ATTRIBUTE` (`USER_ID`);

--
-- Índices de tabela `USER_CONSENT`
--
ALTER TABLE `USER_CONSENT`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_JKUWUVD56ONTGSUHOGM8UEWRT` (`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  ADD KEY `IDX_USER_CONSENT` (`USER_ID`);

--
-- Índices de tabela `USER_CONSENT_CLIENT_SCOPE`
--
ALTER TABLE `USER_CONSENT_CLIENT_SCOPE`
  ADD PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`),
  ADD KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`);

--
-- Índices de tabela `USER_ENTITY`
--
ALTER TABLE `USER_ENTITY`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  ADD UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  ADD KEY `IDX_USER_EMAIL` (`EMAIL`);

--
-- Índices de tabela `USER_FEDERATION_CONFIG`
--
ALTER TABLE `USER_FEDERATION_CONFIG`
  ADD PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`);

--
-- Índices de tabela `USER_FEDERATION_MAPPER`
--
ALTER TABLE `USER_FEDERATION_MAPPER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  ADD KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`);

--
-- Índices de tabela `USER_FEDERATION_MAPPER_CONFIG`
--
ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG`
  ADD PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`);

--
-- Índices de tabela `USER_FEDERATION_PROVIDER`
--
ALTER TABLE `USER_FEDERATION_PROVIDER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`);

--
-- Índices de tabela `USER_GROUP_MEMBERSHIP`
--
ALTER TABLE `USER_GROUP_MEMBERSHIP`
  ADD PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  ADD KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`);

--
-- Índices de tabela `USER_REQUIRED_ACTION`
--
ALTER TABLE `USER_REQUIRED_ACTION`
  ADD PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  ADD KEY `IDX_USER_REQACTIONS` (`USER_ID`);

--
-- Índices de tabela `USER_ROLE_MAPPING`
--
ALTER TABLE `USER_ROLE_MAPPING`
  ADD PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  ADD KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`);

--
-- Índices de tabela `USER_SESSION`
--
ALTER TABLE `USER_SESSION`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `USER_SESSION_NOTE`
--
ALTER TABLE `USER_SESSION_NOTE`
  ADD PRIMARY KEY (`USER_SESSION`,`NAME`);

--
-- Índices de tabela `WEB_ORIGINS`
--
ALTER TABLE `WEB_ORIGINS`
  ADD PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  ADD KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `ASSOCIATED_POLICY`
--
ALTER TABLE `ASSOCIATED_POLICY`
  ADD CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  ADD CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Restrições para tabelas `AUTHENTICATION_EXECUTION`
--
ALTER TABLE `AUTHENTICATION_EXECUTION`
  ADD CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  ADD CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `AUTHENTICATION_FLOW`
--
ALTER TABLE `AUTHENTICATION_FLOW`
  ADD CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `AUTHENTICATOR_CONFIG`
--
ALTER TABLE `AUTHENTICATOR_CONFIG`
  ADD CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `CLIENT_ATTRIBUTES`
--
ALTER TABLE `CLIENT_ATTRIBUTES`
  ADD CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Restrições para tabelas `CLIENT_INITIAL_ACCESS`
--
ALTER TABLE `CLIENT_INITIAL_ACCESS`
  ADD CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `CLIENT_NODE_REGISTRATIONS`
--
ALTER TABLE `CLIENT_NODE_REGISTRATIONS`
  ADD CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Restrições para tabelas `CLIENT_SCOPE_ATTRIBUTES`
--
ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES`
  ADD CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`);

--
-- Restrições para tabelas `CLIENT_SCOPE_ROLE_MAPPING`
--
ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING`
  ADD CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`);

--
-- Restrições para tabelas `CLIENT_SESSION`
--
ALTER TABLE `CLIENT_SESSION`
  ADD CONSTRAINT `FK_B4AO2VCVAT6UKAU74WBWTFQO1` FOREIGN KEY (`SESSION_ID`) REFERENCES `USER_SESSION` (`ID`);

--
-- Restrições para tabelas `CLIENT_SESSION_AUTH_STATUS`
--
ALTER TABLE `CLIENT_SESSION_AUTH_STATUS`
  ADD CONSTRAINT `AUTH_STATUS_CONSTRAINT` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Restrições para tabelas `CLIENT_SESSION_NOTE`
--
ALTER TABLE `CLIENT_SESSION_NOTE`
  ADD CONSTRAINT `FK5EDFB00FF51C2736` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Restrições para tabelas `CLIENT_SESSION_PROT_MAPPER`
--
ALTER TABLE `CLIENT_SESSION_PROT_MAPPER`
  ADD CONSTRAINT `FK_33A8SGQW18I532811V7O2DK89` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Restrições para tabelas `CLIENT_SESSION_ROLE`
--
ALTER TABLE `CLIENT_SESSION_ROLE`
  ADD CONSTRAINT `FK_11B7SGQW18I532811V7O2DV76` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Restrições para tabelas `CLIENT_USER_SESSION_NOTE`
--
ALTER TABLE `CLIENT_USER_SESSION_NOTE`
  ADD CONSTRAINT `FK_CL_USR_SES_NOTE` FOREIGN KEY (`CLIENT_SESSION`) REFERENCES `CLIENT_SESSION` (`ID`);

--
-- Restrições para tabelas `COMPONENT`
--
ALTER TABLE `COMPONENT`
  ADD CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `COMPONENT_CONFIG`
--
ALTER TABLE `COMPONENT_CONFIG`
  ADD CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`);

--
-- Restrições para tabelas `COMPOSITE_ROLE`
--
ALTER TABLE `COMPOSITE_ROLE`
  ADD CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  ADD CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`);

--
-- Restrições para tabelas `CREDENTIAL`
--
ALTER TABLE `CREDENTIAL`
  ADD CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Restrições para tabelas `DEFAULT_CLIENT_SCOPE`
--
ALTER TABLE `DEFAULT_CLIENT_SCOPE`
  ADD CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `FEDERATED_IDENTITY`
--
ALTER TABLE `FEDERATED_IDENTITY`
  ADD CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Restrições para tabelas `GROUP_ATTRIBUTE`
--
ALTER TABLE `GROUP_ATTRIBUTE`
  ADD CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`);

--
-- Restrições para tabelas `GROUP_ROLE_MAPPING`
--
ALTER TABLE `GROUP_ROLE_MAPPING`
  ADD CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`);

--
-- Restrições para tabelas `IDENTITY_PROVIDER`
--
ALTER TABLE `IDENTITY_PROVIDER`
  ADD CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `IDENTITY_PROVIDER_CONFIG`
--
ALTER TABLE `IDENTITY_PROVIDER_CONFIG`
  ADD CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`);

--
-- Restrições para tabelas `IDENTITY_PROVIDER_MAPPER`
--
ALTER TABLE `IDENTITY_PROVIDER_MAPPER`
  ADD CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `IDP_MAPPER_CONFIG`
--
ALTER TABLE `IDP_MAPPER_CONFIG`
  ADD CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`);

--
-- Restrições para tabelas `KEYCLOAK_ROLE`
--
ALTER TABLE `KEYCLOAK_ROLE`
  ADD CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `POLICY_CONFIG`
--
ALTER TABLE `POLICY_CONFIG`
  ADD CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Restrições para tabelas `PROTOCOL_MAPPER`
--
ALTER TABLE `PROTOCOL_MAPPER`
  ADD CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  ADD CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Restrições para tabelas `PROTOCOL_MAPPER_CONFIG`
--
ALTER TABLE `PROTOCOL_MAPPER_CONFIG`
  ADD CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`);

--
-- Restrições para tabelas `REALM_ATTRIBUTE`
--
ALTER TABLE `REALM_ATTRIBUTE`
  ADD CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `REALM_DEFAULT_GROUPS`
--
ALTER TABLE `REALM_DEFAULT_GROUPS`
  ADD CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `REALM_ENABLED_EVENT_TYPES`
--
ALTER TABLE `REALM_ENABLED_EVENT_TYPES`
  ADD CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `REALM_EVENTS_LISTENERS`
--
ALTER TABLE `REALM_EVENTS_LISTENERS`
  ADD CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `REALM_REQUIRED_CREDENTIAL`
--
ALTER TABLE `REALM_REQUIRED_CREDENTIAL`
  ADD CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `REALM_SMTP_CONFIG`
--
ALTER TABLE `REALM_SMTP_CONFIG`
  ADD CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `REALM_SUPPORTED_LOCALES`
--
ALTER TABLE `REALM_SUPPORTED_LOCALES`
  ADD CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `REDIRECT_URIS`
--
ALTER TABLE `REDIRECT_URIS`
  ADD CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Restrições para tabelas `REQUIRED_ACTION_PROVIDER`
--
ALTER TABLE `REQUIRED_ACTION_PROVIDER`
  ADD CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `RESOURCE_ATTRIBUTE`
--
ALTER TABLE `RESOURCE_ATTRIBUTE`
  ADD CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`);

--
-- Restrições para tabelas `RESOURCE_POLICY`
--
ALTER TABLE `RESOURCE_POLICY`
  ADD CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  ADD CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Restrições para tabelas `RESOURCE_SCOPE`
--
ALTER TABLE `RESOURCE_SCOPE`
  ADD CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  ADD CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`);

--
-- Restrições para tabelas `RESOURCE_SERVER_PERM_TICKET`
--
ALTER TABLE `RESOURCE_SERVER_PERM_TICKET`
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  ADD CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`);

--
-- Restrições para tabelas `RESOURCE_SERVER_POLICY`
--
ALTER TABLE `RESOURCE_SERVER_POLICY`
  ADD CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`);

--
-- Restrições para tabelas `RESOURCE_SERVER_RESOURCE`
--
ALTER TABLE `RESOURCE_SERVER_RESOURCE`
  ADD CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`);

--
-- Restrições para tabelas `RESOURCE_SERVER_SCOPE`
--
ALTER TABLE `RESOURCE_SERVER_SCOPE`
  ADD CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`);

--
-- Restrições para tabelas `RESOURCE_URIS`
--
ALTER TABLE `RESOURCE_URIS`
  ADD CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`);

--
-- Restrições para tabelas `ROLE_ATTRIBUTE`
--
ALTER TABLE `ROLE_ATTRIBUTE`
  ADD CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`);

--
-- Restrições para tabelas `SCOPE_MAPPING`
--
ALTER TABLE `SCOPE_MAPPING`
  ADD CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);

--
-- Restrições para tabelas `SCOPE_POLICY`
--
ALTER TABLE `SCOPE_POLICY`
  ADD CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  ADD CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`);

--
-- Restrições para tabelas `USER_ATTRIBUTE`
--
ALTER TABLE `USER_ATTRIBUTE`
  ADD CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Restrições para tabelas `USER_CONSENT`
--
ALTER TABLE `USER_CONSENT`
  ADD CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Restrições para tabelas `USER_CONSENT_CLIENT_SCOPE`
--
ALTER TABLE `USER_CONSENT_CLIENT_SCOPE`
  ADD CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`);

--
-- Restrições para tabelas `USER_FEDERATION_CONFIG`
--
ALTER TABLE `USER_FEDERATION_CONFIG`
  ADD CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`);

--
-- Restrições para tabelas `USER_FEDERATION_MAPPER`
--
ALTER TABLE `USER_FEDERATION_MAPPER`
  ADD CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  ADD CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `USER_FEDERATION_MAPPER_CONFIG`
--
ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG`
  ADD CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`);

--
-- Restrições para tabelas `USER_FEDERATION_PROVIDER`
--
ALTER TABLE `USER_FEDERATION_PROVIDER`
  ADD CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`);

--
-- Restrições para tabelas `USER_GROUP_MEMBERSHIP`
--
ALTER TABLE `USER_GROUP_MEMBERSHIP`
  ADD CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Restrições para tabelas `USER_REQUIRED_ACTION`
--
ALTER TABLE `USER_REQUIRED_ACTION`
  ADD CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Restrições para tabelas `USER_ROLE_MAPPING`
--
ALTER TABLE `USER_ROLE_MAPPING`
  ADD CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`);

--
-- Restrições para tabelas `USER_SESSION_NOTE`
--
ALTER TABLE `USER_SESSION_NOTE`
  ADD CONSTRAINT `FK5EDFB00FF51D3472` FOREIGN KEY (`USER_SESSION`) REFERENCES `USER_SESSION` (`ID`);

--
-- Restrições para tabelas `WEB_ORIGINS`
--
ALTER TABLE `WEB_ORIGINS`
  ADD CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
