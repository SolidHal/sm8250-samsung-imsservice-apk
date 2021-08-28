.class Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;
.super Ljava/lang/Object;
.source "CapabilityDiscoveryModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$1;

    .line 1067
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    return-void
.end method


# virtual methods
.method public onReady(IZ)V
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "absent"    # Z

    .line 1074
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1075
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1076
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    const-string v2, ""

    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    .line 1078
    .local v3, "imsi":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const-string v5, "capdiscovery"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1079
    .local v4, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1080
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "imsi"

    invoke-interface {v4, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1082
    .local v2, "spImsi":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "CapabilityDiscModule"

    if-nez v8, :cond_2

    sget-object v8, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v8, :cond_2

    .line 1083
    const-string v8, "imsi changed"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v8, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1085
    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1088
    :cond_2
    const-string v7, "SimEventListener,onReady,EVT_SYNC_CONTACT"

    invoke-static {v9, p1, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1089
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1091
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$902(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)I

    .line 1092
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$900(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v7, v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$902(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)I

    .line 1094
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$900(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v6

    if-eq v6, p1, :cond_4

    .line 1095
    const-string v6, "SimEventListener : contact sync of opposite sim is blocked."

    invoke-static {v9, p1, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1096
    return-void

    .line 1099
    :cond_4
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v7, 0xa

    invoke-virtual {v6, v7, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1100
    return-void
.end method
