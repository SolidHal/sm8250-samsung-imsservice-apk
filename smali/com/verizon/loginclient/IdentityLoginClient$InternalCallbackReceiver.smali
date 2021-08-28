.class Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;
.super Ljava/lang/Object;
.source "IdentityLoginClient.java"

# interfaces
.implements Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/IdentityLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallbackReceiver"
.end annotation


# instance fields
.field result:Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

.field final synthetic this$0:Lcom/verizon/loginclient/IdentityLoginClient;


# direct methods
.method private constructor <init>(Lcom/verizon/loginclient/IdentityLoginClient;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->this$0:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient;
    .param p2, "x1"    # Lcom/verizon/loginclient/IdentityLoginClient$1;

    .line 871
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;-><init>(Lcom/verizon/loginclient/IdentityLoginClient;)V

    return-void
.end method

.method private handleEvent(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "rc"    # Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .param p2, "idenData"    # Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 887
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->this$0:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/IdentityLoginClient;->access$1000(Lcom/verizon/loginclient/IdentityLoginClient;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 888
    :try_start_0
    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V

    iput-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->result:Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    .line 889
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->this$0:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-static {v1}, Lcom/verizon/loginclient/IdentityLoginClient;->access$1000(Lcom/verizon/loginclient/IdentityLoginClient;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 890
    monitor-exit v0

    .line 891
    return-void

    .line 890
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onErrorResult(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "status"    # Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 882
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->handleEvent(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;)V

    .line 883
    return-void
.end method

.method public onIdentityResult(Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;)V
    .locals 2
    .param p1, "idenResult"    # Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    .line 877
    sget-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->success:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/verizon/loginclient/IdentityLoginClient$InternalCallbackReceiver;->handleEvent(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;)V

    .line 878
    return-void
.end method
