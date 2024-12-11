# ベースイメージ
FROM node:16-alpine

# 作業ディレクトリを設定
WORKDIR /app

# 必要なファイルをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install
RUN npm install redux react-redux 
RUN npm install react-scripts@4.0.3 -g

# ソースコードをコピー
COPY . .

# アプリケーションを起動
CMD ["npm", "start"]
