.class Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;
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
    name = "AsyncEventReceiver"
.end annotation


# instance fields
.field private final mClientReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field final synthetic this$0:Lcom/verizon/loginclient/TokenLoginClient;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;)V
    .locals 1
    .param p2, "clientReceiver"    # Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 881
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    if-eqz p2, :cond_0

    .line 883
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->mClientReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 884
    return-void

    .line 882
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "client receiver cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1300(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;)Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    .line 877
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->mClientReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    return-object v0
.end method


# virtual methods
.method public onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "status"    # Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 895
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1400(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    move-result-object v0

    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;-><init>(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->post(Ljava/lang/Runnable;)Z

    .line 898
    return-void
.end method

.method public onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
    .locals 2
    .param p1, "result"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    .line 888
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1400(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    move-result-object v0

    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;-><init>(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->post(Ljava/lang/Runnable;)Z

    .line 891
    return-void
.end method
