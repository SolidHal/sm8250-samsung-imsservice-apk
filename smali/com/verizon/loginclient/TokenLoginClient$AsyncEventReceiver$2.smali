.class Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$status:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    .line 895
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;->this$1:Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;->val$status:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    iput-object p3, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;->this$1:Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->access$1300(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;)Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;->val$status:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    iget-object v2, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;->val$ex:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;->onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V

    return-void
.end method
