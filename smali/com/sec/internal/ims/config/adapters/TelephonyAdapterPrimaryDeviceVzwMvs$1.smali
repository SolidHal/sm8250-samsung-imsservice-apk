.class Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$1;
.super Ljava/lang/Object;
.source "TelephonyAdapterPrimaryDeviceVzwMvs.java"

# interfaces
.implements Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$1;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "status"    # Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$1;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onErrorResult: status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$1;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method

.method public onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
    .locals 4
    .param p1, "result"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    .line 54
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$1;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTokenResult: AppToken is received subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;->subscriptionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$1;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTokenResult: AppToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs$1;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;

    iget-object v1, p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;->token:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzwMvs;->sendMessage(Landroid/os/Message;)Z

    .line 57
    return-void
.end method
