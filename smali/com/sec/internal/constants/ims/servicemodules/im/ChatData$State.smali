.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
.super Ljava/lang/Enum;
.source "ChatData.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 319
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 324
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 329
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "INACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 334
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "CLOSED_BY_USER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 339
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "CLOSED_INVOLUNTARILY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 344
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const-string v1, "CLOSED_VOLUNTARILY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 315
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 346
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 351
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->id:I

    .line 352
    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 3
    .param p0, "id"    # I

    .line 365
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 367
    .local v0, "state":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    :try_start_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 371
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 315
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 1

    .line 315
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 1
    .param p1, "id"    # I

    .line 361
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 315
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->id:I

    return v0
.end method
