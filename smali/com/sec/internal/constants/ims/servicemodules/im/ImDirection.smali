.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
.super Ljava/lang/Enum;
.source "ImDirection.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field public static final enum INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field public static final enum IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field public static final enum OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const-string v1, "INCOMING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 28
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const-string v1, "OUTGOING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 33
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const-string v1, "IRRELEVANT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 19
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 37
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->id:I

    .line 42
    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 2
    .param p0, "id"    # I

    .line 55
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 2
    .param p1, "id"    # I

    .line 51
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object v0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->id:I

    return v0
.end method
