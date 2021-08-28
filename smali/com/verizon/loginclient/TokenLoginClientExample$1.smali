.class Lcom/verizon/loginclient/TokenLoginClientExample$1;
.super Ljava/lang/Object;
.source "TokenLoginClientExample.java"

# interfaces
.implements Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClientExample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verizon/loginclient/TokenLoginClientExample;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/TokenLoginClientExample;)V
    .locals 0
    .param p1, "this$0"    # Lcom/verizon/loginclient/TokenLoginClientExample;

    .line 108
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClientExample$1;->this$0:Lcom/verizon/loginclient/TokenLoginClientExample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "status"    # Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 128
    sget-object v0, Lcom/verizon/loginclient/TokenLoginClientExample$2;->$SwitchMap$com$verizon$loginclient$TokenLoginClient$ResultCode:[I

    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "TokenLoginClientExample"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    const-string v0, "Timed out waiting for content observer after initial null token result"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    :pswitch_1
    const-string v0, "Login Client threw SecurityException, usually b/c your app failed authorization"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    goto :goto_0

    .line 137
    :pswitch_2
    const-string v0, "Token fetch failed!  (somewhat unusual - success or timeout are most common). Exception may be null"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    goto :goto_0

    .line 134
    :pswitch_3
    const-string v0, "Official LoginEngine content provider not found!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    goto :goto_0

    .line 130
    :pswitch_4
    const-string v0, "This device does not have expected system features indicating LTE is supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    nop

    .line 147
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
    .locals 4
    .param p1, "result"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token ready for SPC validation (base64 encoded): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TokenLoginClientExample"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;->token:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 117
    .local v0, "plainTextToken":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Token (plain text): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget v2, p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;->subscriptionId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target SubscriptionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;->subscriptionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method
