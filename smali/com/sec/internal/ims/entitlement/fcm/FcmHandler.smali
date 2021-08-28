.class public Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;
.super Ljava/lang/Object;
.source "FcmHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;


# static fields
.field public static final API_KEY:Ljava/lang/String; = "AIzaSyC9rGRRr3J16mn510MIjZx0DbCEbwesCbM"

.field public static final FIREBASE_URL:Ljava/lang/String; = "https://fir-e287d.firebaseio.com"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MOBILESDK_APP_ID:Ljava/lang/String; = "1:907837128383:android:63ec13a18eb17af2"

.field public static final PROJECT_ID:Ljava/lang/String; = "fir-e287d"

.field public static final PROJECT_NUMBER:Ljava/lang/String; = "907837128383"

.field public static final STORAGE_BUCKET:Ljava/lang/String; = "fir-e287d.appspot.com"


# instance fields
.field private mFcmEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;->mFcmEventListeners:Ljava/util/List;

    .line 30
    :try_start_0
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v1, "1:907837128383:android:63ec13a18eb17af2"

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "AIzaSyC9rGRRr3J16mn510MIjZx0DbCEbwesCbM"

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "https://fir-e287d.firebaseio.com"

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "907837128383"

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "fir-e287d"

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    const-string v1, "fir-e287d.appspot.com"

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    .line 37
    .local v0, "options":Lcom/google/firebase/FirebaseOptions;
    invoke-static {p1, v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    .line 38
    sget-object v1, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "FirebaseApp initialization successful"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "options":Lcom/google/firebase/FirebaseOptions;
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirebaseApp initialization unsuccessful: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/util/Map;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;->mFcmEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;

    .line 47
    .local v1, "listener":Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;->onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    .end local v1    # "listener":Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public registerFcmEventListener(Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;)V
    .locals 1
    .param p1, "fcmEventListener"    # Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;->mFcmEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public unRegisterFcmEventListener(Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;)V
    .locals 1
    .param p1, "fcmEventListener"    # Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/fcm/FcmHandler;->mFcmEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method
