.class Lcom/verizon/loginclient/TokenLoginClient$1;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/loginclient/TokenLoginClient;->queryTokenAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verizon/loginclient/TokenLoginClient;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/TokenLoginClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/verizon/loginclient/TokenLoginClient;

    .line 148
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$1;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$1;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$200(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v0

    .line 153
    .local v0, "result":Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    invoke-virtual {v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    move-result-object v1

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    if-eq v1, v2, :cond_0

    .line 154
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient$1;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v1, v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$300(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V

    .line 155
    :cond_0
    return-void
.end method
