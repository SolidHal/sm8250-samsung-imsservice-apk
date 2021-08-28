.class Lcom/sec/internal/helper/httpclient/HttpController$2;
.super Ljava/lang/Object;
.source "HttpController.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/helper/httpclient/HttpController;->getOkHttpClient(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/squareup/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/httpclient/HttpController;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/httpclient/HttpController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/helper/httpclient/HttpController;

    .line 408
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->this$0:Lcom/sec/internal/helper/httpclient/HttpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 410
    const/4 v0, 0x1

    return v0
.end method
