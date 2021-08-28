.class public Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorSoftphone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WifiEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "RegiGvnSoftp"

    const-string v1, "WifiEventReceiver: INTENT_ACTION_WIFI_MODE_CHANGED Received."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "delayState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$WifiEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->sendDeregister(I)V

    .line 137
    const-string v1, "WifiEventReceiver: send Deregister message."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void
.end method
