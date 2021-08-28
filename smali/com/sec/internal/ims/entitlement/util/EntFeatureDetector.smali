.class public Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;
.super Ljava/lang/Object;
.source "EntFeatureDetector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-class v0, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVSimFeatureEnabled(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "vsimType"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .line 9
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigServer(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, "configserver":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVSimFeatureEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " configserver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    const/4 v1, 0x1

    return v1

    .line 14
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static checkWFCAutoOnEnabled(I)Z
    .locals 4
    .param p0, "simSlot"    # I

    .line 18
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isWFCAutoOnEnabled(I)Z

    move-result v0

    .line 19
    .local v0, "wfcAutoOnEnabled":Z
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWFCAutoOnEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v1, 0x1

    return v1

    .line 23
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
