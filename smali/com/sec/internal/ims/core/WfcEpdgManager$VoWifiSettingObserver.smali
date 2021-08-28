.class Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;
.super Landroid/database/ContentObserver;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoWifiSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 780
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 781
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 782
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 787
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 791
    if-nez p2, :cond_0

    .line 792
    return-void

    .line 794
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " on Vowifi SETTING Changed, key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v1, 0x1

    .line 797
    .local v1, "slotId1":I
    const/4 v2, 0x2

    .line 798
    .local v2, "slotId2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi_call_enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x4

    if-eqz v3, :cond_1

    .line 799
    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessage(II)V

    goto :goto_0

    .line 800
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 801
    iget-object v3, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$VoWifiSettingObserver;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessage(II)V

    .line 803
    :cond_2
    :goto_0
    return-void
.end method
