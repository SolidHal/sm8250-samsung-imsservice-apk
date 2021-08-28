.class Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;
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
    name = "AsyncEventReceiver"
.end annotation


# instance fields
.field private final mClientReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

.field final synthetic this$0:Lcom/verizon/loginclient/IdentityLoginClient;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;)V
    .locals 1
    .param p2, "clientReceiver"    # Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 903
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;->this$0:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    if-eqz p2, :cond_0

    .line 905
    iput-object p2, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;->mClientReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    .line 906
    return-void

    .line 904
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "client receiver cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1100(Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;)Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

    .line 899
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;->mClientReceiver:Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    return-object v0
.end method


# virtual methods
.method public onErrorResult(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "status"    # Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 917
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;->this$0:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/IdentityLoginClient;->access$1200(Lcom/verizon/loginclient/IdentityLoginClient;)Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    move-result-object v0

    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$2;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;->post(Ljava/lang/Runnable;)Z

    .line 920
    return-void
.end method

.method public onIdentityResult(Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;)V
    .locals 2
    .param p1, "idenResult"    # Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    .line 910
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;->this$0:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/IdentityLoginClient;->access$1200(Lcom/verizon/loginclient/IdentityLoginClient;)Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;

    move-result-object v0

    new-instance v1, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$1;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;)V

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityMsgHandler;->post(Ljava/lang/Runnable;)Z

    .line 913
    return-void
.end method
