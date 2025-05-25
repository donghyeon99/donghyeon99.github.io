---
layout: post
title: "Vercel 소개 및 Next.js 앱 배포 가이드"
date: 2025-05-25 
categories: [Development]
tags: [Vercel, Deployment, Frontend, Next.js]
---

# 🌐 Vercel 소개 및 Next.js 앱 배포 가이드

## 📖 Vercel이란?

> 💡 **핵심 설명**
> 
> Vercel은 프론트엔드 애플리케이션을 간편하게 배포할 수 있는 플랫폼으로, 예전처럼 물리적인 서버를 직접 구축하거나 설정할 필요 없이, 클라우드 상에서 자동으로 빌드하고 배포까지 처리해주는 도구다.

Vercel은, 우리가 만든 웹사이트나 웹앱을 누구나 접속할 수 있도록 인터넷에 올려주는 플랫폼이다.
특히 요즘 많이 쓰는 Next.js 같은 프레임워크로 개발한 사이트를 배포할 때 정말 편리하다.
예전엔 서버를 직접 세팅하고 복잡하게 배포 환경을 만들어야 했는데, Vercel은 그냥 GitHub에 코드만 올려두면 자동으로 빌드하고 배포까지 해주기 때문에 많이 사용하고 있다.

또 재미있는 건, 이 Vercel이라는 플랫폼을 만든 회사가 바로 Next.js 프레임워크를 만든 곳이라는 점이다.
그래서 둘의 궁합이 엄청나게 잘 맞는다.
Next.js의 대표 기능들 — 서버 사이드 렌더링, 정적 페이지 생성, 이미지 최적화 같은 것들이 Vercel에서 설정 따로 안 해도 그냥 자동으로 작동한다.

정리하자면, Vercel은 특히 프론트엔드 개발자, 그중에서도 Next.js 쓰는 사람에게는 가장 잘 맞는 배포 도구라고 생각하면 좋을 듯 하다.

### 주요 특징

1. **자동 배포**
   - GitHub, GitLab, Bitbucket과 연동하여 자동 배포
   - Pull Request마다 프리뷰 배포 제공
   - 메인 브랜치에 머지 시 자동 프로덕션 배포

2. **최적화된 성능**
   - Edge Network를 통한 글로벌 CDN
   - 자동 이미지 최적화
   - Serverless Functions 지원

3. **개발자 경험**
   - Zero-configuration 설정
   - 다양한 프레임워크 지원 (Next.js, React, Vue, Angular 등)
   - 실시간 로그 및 모니터링

## ⚙️ 사전 준비 (Preinstall)

배포를 시작하기 전 아래 항목이 준비되어 있어야 한다:

* ✅ GitHub 계정
* ✅ Node.js 설치
* ✅ Vercel 계정 (GitHub 계정으로 로그인 가능)

### Node.js 설치

[https://nodejs.org](https://nodejs.org)에서 LTS 버전 설치.

설치 확인:
```bash
node -v
npm -v
```

## 🚀 Vercel 배포 예제

### 1️⃣ Next.js 앱 생성

```bash
npx create-next-app@latest my-vercel-app
cd my-vercel-app
npm run dev
```

브라우저에서 `http://localhost:3000` 으로 접속하면 기본 페이지가 보인다.

### 2️⃣ 메인 화면 수정

먼저 가장 기본적인 예제부터 시작해보면. `app/page.tsx` 파일을 열고 다음과 같이 수정:

```tsx
export default function Home() {
  return (
    <main>
      <h1>Hello, Vercel!</h1>
      <p>처음 배포해보는 Next.js 앱입니다.</p>
    </main>
  );
}
```

### 3️⃣ GitHub에 업로드

```bash
cd my-vercel-app
git init
git add .
git commit -m "첫 커밋: 기본 Next.js 페이지"
```

GitHub에서 새 저장소 생성 후, 다음 명령어 실행:

```bash
git remote add origin https://github.com/사용자명/my-vercel-app.git
git branch -M main
git push -u origin main
```

> ✅ 명령어 설명
>
> * `remote add origin`: 원격 저장소 연결
> * `branch -M main`: 브랜치명을 main으로 설정
> * `push -u`: 앞으로 push 시 자동 추적 설정

### 4️⃣ Vercel에서 배포

1. [https://vercel.com](https://vercel.com) 접속 후 로그인
2. `Add New → Project` 클릭
3. GitHub 저장소 `my-vercel-app` 선택
4. 자동 설정 확인 후 `Deploy` 클릭

### 5️⃣ 배포 확인

배포가 완료되면 다음과 같은 주소가 생성된다:

```
https://your-project-name.vercel.app
```

코드를 수정하고 GitHub에 push하면 Vercel이 자동으로 다시 배포:

```bash
git add .
git commit -m "텍스트 변경"
git push
```

## 🎨 더 실용적인 예제 만들어보기

조금 더 실용적인 예제를 만들어 보자. 
`app/page.tsx` 파일을 다음과 같이 수정:

```tsx
'use client';

import { useState } from 'react';

export default function Home() {
  const [count, setCount] = useState(0);
  const [name, setName] = useState('');

  return (
    <main className="min-h-screen p-8 bg-gradient-to-b from-blue-50 to-white">
      <div className="max-w-4xl mx-auto">
        <h1 className="text-4xl font-bold text-center mb-8 text-blue-600">
          Next.js 예시 페이지
        </h1>
        
        {/* 카운터 섹션 */}
        <div className="bg-white p-6 rounded-lg shadow-md mb-8">
          <h2 className="text-2xl font-semibold mb-4">인터랙티브 카운터</h2>
          <div className="flex items-center gap-4">
            <button
              onClick={() => setCount(count - 1)}
              className="px-4 py-2 bg-red-500 text-white rounded hover:bg-red-600"
            >
              감소
            </button>
            <span className="text-2xl font-bold">{count}</span>
            <button
              onClick={() => setCount(count + 1)}
              className="px-4 py-2 bg-green-500 text-white rounded hover:bg-green-600"
            >
              증가
            </button>
          </div>
        </div>

        {/* 폼 섹션 */}
        <div className="bg-white p-6 rounded-lg shadow-md">
          <h2 className="text-2xl font-semibold mb-4">간단한 폼</h2>
          <div className="space-y-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                이름을 입력하세요
              </label>
              <input
                type="text"
                value={name}
                onChange={(e) => setName(e.target.value)}
                className="w-full px-4 py-2 border rounded-md focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                placeholder="이름을 입력하세요"
              />
            </div>
            {name && (
              <p className="text-blue-600">
                안녕하세요, {name}님! 환영합니다!
              </p>
            )}
          </div>
        </div>
      </div>
    </main>
  );
}
```
![Next.js 예제 페이지](/assets/img/posts/nextjs-example-page.png)

> 💡 **페이지 구성 설명**
> 
> - 상단: Next.js 예시 페이지 제목
> - 중간: 인터랙티브 카운터 (숫자 조절 가능)
> - 하단: 이름 입력 폼 (실시간 환영 메시지)
> - 전체: Tailwind CSS로 스타일링된 모던한 디자인

이 예제는 다음과 같은 기능들을 포함하고 있다:

1. **인터랙티브 카운터**: 증가/감소 버튼으로 숫자를 조절
2. **폼 입력**: 이름을 입력하면 실시간으로 환영 메시지가 표시
3. **모던한 디자인**: Tailwind CSS를 사용한 UI

이 코드를 GitHub에 push하면 Vercel이 자동으로 다시 배포:

```bash
git add .
git commit -m "인터랙티브 기능 추가"
git push
```

## Vercel의 장점
 
- **빠른 배포**: 몇 분 내에 프로젝트 배포 가능
- **확장성**: 트래픽에 따른 자동 스케일링
- **보안**: SSL/TLS 인증서 자동 관리
- **협업**: 팀원들과 쉽게 프로젝트 공유 및 관리

## ✅ 마무리 정리

| 항목    | 설명                             |
| ----- | ------------------------------ |
| 플랫폼   | Vercel                         |
| 프레임워크 | Next.js (TypeScript 기반)        |
| 배포 방식 | GitHub → Vercel 자동 배포          |
| 주요 이점 | 빠른 배포, 미리 보기, 서버리스 API, CDN 지원 |

## 결론

Vercel은 현대적인 웹 개발에 필요한 모든 기능을 제공하는 강력한 플랫폼. 특히 프론트엔드 개발자들에게 최적화된 서비스를 제공하며, 개발부터 배포까지 원활한 워크플로우를 구축할 수 있다.

## 참고 자료

- [Vercel 공식 문서](https://vercel.com/docs)
- [Vercel GitHub](https://github.com/vercel/vercel)
- [Next.js 공식 문서](https://nextjs.org/docs)
- [예제 git repo](https://github.com/donghyeon99/my-vercel-app)

🙂
