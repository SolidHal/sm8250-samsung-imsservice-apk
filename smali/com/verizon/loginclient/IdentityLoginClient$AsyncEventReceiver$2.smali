.class Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$2;
.super Ljava/lang/Object;
.source "IdentityLoginClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;->onErrorResult(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$status:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

    .line 917
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$2;->this$1:Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

    iput-object p2, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$2;->val$status:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    iput-object p3, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$2;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 918
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$2;->this$1:Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;

    invoke-static {v0}, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;->access$1100(Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver;)Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$2;->val$status:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    iget-object v2, p0, Lcom/verizon/loginclient/IdentityLoginClient$AsyncEventReceiver$2;->val$ex:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;->onErrorResult(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Ljava/lang/Throwable;)V

    return-void
.end method
