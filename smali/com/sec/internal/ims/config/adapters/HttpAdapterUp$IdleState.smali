.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.source "HttpAdapterUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mParams:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->access$000(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mUrl:Ljava/lang/StringBuffer;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mUrl:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mParams:Ljava/util/Map;

    invoke-static {v0, p1, v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->access$100(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)V

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->openUrlConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    return v3

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->setUrlConnection()V

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mURLConn:Ljava/net/URLConnection;

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mHttpURLConn:Ljava/net/HttpURLConnection;

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    new-instance v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 42
    const/4 v0, 0x1

    return v0
.end method
