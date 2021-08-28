.class public Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;
.source "SwisscomUPStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
    .locals 4
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "features"    # J
    .param p5, "cacheInfoExpiry"    # J

    .line 28
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p2, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: User is offline"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    return v2

    .line 38
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v1, :cond_2

    .line 39
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: internal problem"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    return v0

    .line 43
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-ne p1, v1, :cond_3

    .line 44
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: do not change anything"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    return v2

    .line 48
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq p1, v1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0

    .line 29
    :cond_5
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    return v0
.end method
