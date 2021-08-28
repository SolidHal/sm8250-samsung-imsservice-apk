.class Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"

# interfaces
.implements Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallbackReceiver"
.end annotation


# instance fields
.field private result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

.field final synthetic this$0:Lcom/verizon/loginclient/TokenLoginClient;


# direct methods
.method private constructor <init>(Lcom/verizon/loginclient/TokenLoginClient;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/verizon/loginclient/TokenLoginClient;
    .param p2, "x1"    # Lcom/verizon/loginclient/TokenLoginClient$1;

    .line 851
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;)V

    return-void
.end method

.method static synthetic access$400(Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    .line 851
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    return-object v0
.end method

.method static synthetic access$402(Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 0
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;
    .param p1, "x1"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    .line 851
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    return-object p1
.end method

.method private handleEvent(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "rc"    # Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .param p2, "tokenData"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 866
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1200(Lcom/verizon/loginclient/TokenLoginClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 867
    :try_start_0
    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    iput-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    .line 868
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v1}, Lcom/verizon/loginclient/TokenLoginClient;->access$1200(Lcom/verizon/loginclient/TokenLoginClient;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 869
    monitor-exit v0

    .line 870
    return-void

    .line 869
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "status"    # Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 861
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->handleEvent(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V

    .line 862
    return-void
.end method

.method public onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
    .locals 2
    .param p1, "tokenData"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    .line 856
    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;->handleEvent(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V

    .line 857
    return-void
.end method
