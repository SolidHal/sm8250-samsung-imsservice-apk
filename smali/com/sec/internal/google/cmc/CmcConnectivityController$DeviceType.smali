.class public final enum Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
.super Ljava/lang/Enum;
.source "CmcConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/cmc/CmcConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

.field public static final enum None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

.field public static final enum PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

.field public static final enum SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 70
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string v1, "PDevice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    .line 71
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string v1, "SDevice"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    .line 72
    new-instance v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    const-string v1, "None"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->None:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    .line 69
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    sget-object v5, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->$VALUES:[Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 69
    const-class v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
    .locals 1

    .line 69
    sget-object v0, Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->$VALUES:[Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    invoke-virtual {v0}, [Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    return-object v0
.end method
