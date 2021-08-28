.class public Lcom/sec/internal/ims/util/TapiServiceUtil;
.super Ljava/lang/Object;
.source "TapiServiceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportTapi()Z
    .locals 5

    .line 11
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    .line 12
    .local v0, "phoneCount":I
    const/4 v1, 0x0

    .line 13
    .local v1, "rcsEnabled":Z
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "rcs"

    invoke-static {v3, v4, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v1, v4

    .line 13
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    .end local v2    # "phoneId":I
    :cond_1
    return v1
.end method
