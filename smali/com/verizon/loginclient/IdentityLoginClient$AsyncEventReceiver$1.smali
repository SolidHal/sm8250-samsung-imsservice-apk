.class Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$1;
.super Ljava/lang/Object;
.source "IdentityLoginClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;->onIdentityResult(Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

.field final synthetic val$idenResult:Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

    .line 910
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$1;->this$1:Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

    iput-object p2, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$1;->val$idenResult:Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$1;->this$1:Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

    invoke-static {v0}, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;->access$1100(Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;)Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$1;->val$idenResult:Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    invoke-interface {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;->onIdentityResult(Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;)V

    return-void
.end method
