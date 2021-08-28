.class public final enum Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;
.super Ljava/lang/Enum;
.source "SimConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/core/SimConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIM_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v1, "ABSENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v1, "LOCKED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v1, "INVALID_ISIM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    const-string v1, "LOADED"

    const/4 v6, 0x4

    const/16 v7, 0xc8

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOADED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 15
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    sget-object v7, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    aput-object v7, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->ABSENT:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->LOCKED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->INVALID_ISIM:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->$VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->mState:I

    .line 25
    iput p3, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->mState:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->$VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    return-object v0
.end method


# virtual methods
.method public varargs isOneOf([Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;)Z
    .locals 4
    .param p1, "states"    # [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "isMatched":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 32
    .local v3, "state":Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;
    if-ne p0, v3, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 31
    .end local v3    # "state":Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    return v0
.end method
