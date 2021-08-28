.class Lcom/sec/internal/ims/core/GeolocationController$2;
.super Landroid/database/ContentObserver;
.source "GeolocationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/GeolocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/GeolocationController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/GeolocationController;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 733
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$2;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 736
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$2;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v0}, Lcom/sec/internal/ims/core/GeolocationController;->access$600(Lcom/sec/internal/ims/core/GeolocationController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/GeolocationController$2;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    .line 737
    invoke-static {v1}, Lcom/sec/internal/ims/core/GeolocationController;->access$600(Lcom/sec/internal/ims/core/GeolocationController;)Landroid/content/Context;

    .line 736
    const/4 v1, -0x1

    const-string v2, "dtlocuserconsent"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 738
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v2, "dtlocation"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 740
    .local v1, "dtLocUserConsent":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange- dtlocuserconsent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GeolocationCon"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController$2;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v3}, Lcom/sec/internal/ims/core/GeolocationController;->access$1200(Lcom/sec/internal/ims/core/GeolocationController;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 743
    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 744
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOBILE_NED:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_0

    .line 745
    goto :goto_1

    .line 748
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController$2;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v4}, Lcom/sec/internal/ims/core/GeolocationController;->access$1300(Lcom/sec/internal/ims/core/GeolocationController;)[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v4, v1, :cond_1

    .line 749
    goto :goto_1

    .line 752
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController$2;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v4}, Lcom/sec/internal/ims/core/GeolocationController;->access$1300(Lcom/sec/internal/ims/core/GeolocationController;)[I

    move-result-object v4

    aput v1, v4, v2

    .line 753
    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController$2;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v4}, Lcom/sec/internal/ims/core/GeolocationController;->access$1400(Lcom/sec/internal/ims/core/GeolocationController;)[Z

    move-result-object v4

    const/4 v5, 0x1

    aput-boolean v5, v4, v2

    .line 754
    iget-object v4, p0, Lcom/sec/internal/ims/core/GeolocationController$2;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    const/4 v5, 0x5

    iget-object v6, v4, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v6, v6, v2

    invoke-virtual {v4, v5, v2, v6}, Lcom/sec/internal/ims/core/GeolocationController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/GeolocationController;->sendMessage(Landroid/os/Message;)Z

    .line 742
    .end local v3    # "mno":Lcom/sec/internal/constants/Mno;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
