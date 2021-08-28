.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
.super Ljava/lang/Enum;
.source "ChatMode.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field public static final enum LINK:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field public static final enum OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field public static final enum ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    const-string v1, "LINK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->LINK:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 3
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 21
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    const-class v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->id:I

    .line 25
    return-void
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .locals 2
    .param p0, "id"    # I

    .line 38
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .locals 2
    .param p1, "id"    # I

    .line 34
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-object v0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->id:I

    return v0
.end method
