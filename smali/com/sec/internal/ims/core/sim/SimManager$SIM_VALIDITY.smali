.class public final enum Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;
.super Ljava/lang/Enum;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIM_VALIDITY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

.field public static final enum GBA_NOT_SUPPORTED:Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

.field public static final enum MSISDN_INVALID:Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 167
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    const-string v1, "GBA_NOT_SUPPORTED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->GBA_NOT_SUPPORTED:Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    .line 168
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    const-string v1, "MSISDN_INVALID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->MSISDN_INVALID:Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    .line 165
    new-array v1, v4, [Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    sget-object v4, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->GBA_NOT_SUPPORTED:Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->$VALUES:[Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->mCode:I

    .line 173
    iput p3, p0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->mCode:I

    .line 174
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 165
    const-class v0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;
    .locals 1

    .line 165
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->$VALUES:[Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$SIM_VALIDITY;->mCode:I

    return v0
.end method
