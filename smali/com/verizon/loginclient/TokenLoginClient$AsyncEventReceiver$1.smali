.class Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

.field final synthetic val$result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    .line 888
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;->this$1:Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;->val$result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;->this$1:Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->access$1300(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;)Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;->val$result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    invoke-interface {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;->onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V

    return-void
.end method
