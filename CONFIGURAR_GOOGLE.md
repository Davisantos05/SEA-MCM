# Configurar o login Google

O projeto Firebase SEA-mcm já foi criado. O código do site usa Firebase Authentication, mas `config.js` está vazio até você registrar um app Web e colar a configuração.

## Firebase Console

1. Na Visão geral do projeto, clique em **Adicionar app** e escolha o ícone **Web** (`</>`). Registre o app, por exemplo, como `SEA-MCM Web`.
2. Na tela de configuração, copie o objeto `firebaseConfig` exibido.
3. Abra **Authentication** na seção **Criação e execução** (ou **Build**) e clique em **Começar** se solicitado.
4. Em **Sign-in method / Provedores de login**, ative **Google**, escolha o e-mail de suporte e salve.
5. Em **Authentication → Settings → Authorized domains**, inclua `localhost` e `127.0.0.1`.

## Arquivo config.js

Abra `config.js` na pasta `SEA-MCM` e substitua `null` pelos valores copiados do Firebase:

```js
window.SEA_FIREBASE_CONFIG = {
  apiKey: "sua-api-key",
  authDomain: "seu-projeto.firebaseapp.com",
  projectId: "id-do-projeto",
  appId: "id-do-app"
};
```

Use exatamente os valores do objeto do Firebase. Se ele tiver `messagingSenderId` ou `storageBucket`, pode copiar esses campos também. A configuração Web não é senha; nunca coloque senha, JSON de conta de serviço ou chave privada no site.

## Abrir e testar

Não abra o `index.html` com duplo clique. Execute `INICIAR_SERVIDOR_LOCAL.bat` dentro da pasta `SEA-MCM`; ele abrirá `http://localhost:5500`. Mantenha a janela do terminal aberta. Alternativamente, use o Live Server do VS Code e autorize o domínio exato mostrado na barra do navegador.

## Erros frequentes

- `auth/unauthorized-domain`: adicione o domínio que aparece na barra do navegador em Authorized domains.
- `auth/operation-not-allowed`: ative o provedor Google.
- `auth/popup-blocked`: permita pop-ups para o endereço local.
- `auth/invalid-api-key`: revise `apiKey` no `config.js`.
- Erro de rede ao carregar Firebase: confira a conexão com a internet e bloqueadores.

O login autentica a conta Google. Este protótipo ainda salva campeonatos no navegador e não sincroniza dados entre computadores; isso exigiria banco de dados e regras de segurança.
