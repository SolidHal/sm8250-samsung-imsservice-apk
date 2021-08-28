.class Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$1;
.super Landroid/telephony/PhoneStateListener;
.source "AmbsPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->createPhoneServiceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    .line 63
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->access$200(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isWifiCallingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 62
    :goto_1
    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->access$102(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;Z)Z

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->access$100(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->access$300()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->access$400(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    .line 66
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->access$302(Z)Z

    .line 68
    :cond_2
    return-void
.end method
