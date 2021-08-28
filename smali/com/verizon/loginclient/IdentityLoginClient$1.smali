.class Lcom/verizon/loginclient/IdentityLoginClient$1;
.super Ljava/lang/Object;
.source "IdentityLoginClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/loginclient/IdentityLoginClient;->queryIdentityAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verizon/loginclient/IdentityLoginClient;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/IdentityLoginClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/verizon/loginclient/IdentityLoginClient;

    .line 147
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$1;->this$0:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$1;->this$0:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/IdentityLoginClient;->access$100(Lcom/verizon/loginclient/IdentityLoginClient;)Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-result-object v0

    .line 152
    .local v0, "result":Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    invoke-virtual {v0}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->getResultCode()Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    move-result-object v1

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    if-eq v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient$1;->this$0:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-static {v1, v0}, Lcom/verizon/loginclient/IdentityLoginClient;->access$200(Lcom/verizon/loginclient/IdentityLoginClient;Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;)V

    .line 154
    :cond_0
    return-void
.end method
