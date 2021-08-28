.class public Lcom/samsung/android/cmcp2phelper/BuildConstants;
.super Ljava/lang/Object;
.source "BuildConstants.java"


# static fields
.field private static SHIP_BUILD:Z

.field private static USER_BINARY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    nop

    .line 7
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcp2phelper/BuildConstants;->SHIP_BUILD:Z

    .line 8
    nop

    .line 9
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcp2phelper/BuildConstants;->USER_BINARY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isShipBuild()Z
    .locals 1

    .line 12
    sget-boolean v0, Lcom/samsung/android/cmcp2phelper/BuildConstants;->SHIP_BUILD:Z

    return v0
.end method

.method public static isUserBinary()Z
    .locals 1

    .line 15
    sget-boolean v0, Lcom/samsung/android/cmcp2phelper/BuildConstants;->USER_BINARY:Z

    return v0
.end method
