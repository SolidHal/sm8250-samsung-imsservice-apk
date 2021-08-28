.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;
.super Ljava/lang/Object;
.source "SoftphoneClient.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 184
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Connected to ImsService."

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-boolean v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRegisterPending:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleTryRegisterRequest()V

    .line 191
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Disconnected from ImsService."

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 196
    return-void
.end method
