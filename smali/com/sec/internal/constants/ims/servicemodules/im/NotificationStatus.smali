.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
.super Ljava/lang/Enum;
.source "NotificationStatus.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
        ">;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/IEnumerationWithId<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field public static final enum DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field public static final enum DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field public static final enum INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field public static final enum INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final enum NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field private static final map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 19
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    const-string v2, "DELIVERED"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 24
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    const-string v2, "DISPLAYED"

    const/4 v5, 0x2

    invoke-direct {v1, v2, v5, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 29
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    const-string v2, "INTERWORKING_SMS"

    const/4 v6, 0x3

    invoke-direct {v1, v2, v6, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 34
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    const-string v2, "INTERWORKING_MMS"

    const/4 v7, 0x4

    invoke-direct {v1, v2, v7, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 10
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    aput-object v8, v2, v3

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    aput-object v3, v2, v5

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    aput-object v3, v2, v6

    aput-object v1, v2, v7

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-direct {v1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->id:I

    .line 44
    return-void
.end method

.method public static decode(I)Ljava/util/Set;
    .locals 2
    .param p0, "dispositionNotificationMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 79
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 84
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    return-object v0
.end method

.method public static encode(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;)I"
        }
    .end annotation

    .line 61
    .local p0, "disposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    const/4 v0, 0x0

    .line 62
    .local v0, "dispositionNotificationMask":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 63
    .local v2, "notification":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 69
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->LOG_TAG:Ljava/lang/String;

    const-string v4, "encode(): unsupported disposition notification!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v3

    or-int/2addr v0, v3

    .line 67
    nop

    .line 72
    .end local v2    # "notification":Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    :goto_1
    goto :goto_0

    .line 73
    :cond_1
    return v0
.end method

.method public static fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 2
    .param p0, "id"    # I

    .line 57
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method

.method public static toSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p0, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v0, "dispositionNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toSet(): disposition :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez p0, :cond_0

    .line 95
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    return-object v0

    .line 99
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x33af38

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const v3, 0x31151bf4

    if-eq v2, v3, :cond_3

    const v3, 0x63a518c2

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "display"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "delivery"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :cond_4
    const-string v2, "none"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    .line 110
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_1

    .line 104
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    goto :goto_1

    .line 101
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    nop

    .line 114
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1

    .line 10
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method


# virtual methods
.method public getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 2
    .param p1, "id"    # I

    .line 53
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->map:Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ReverseEnumMap;->get(Ljava/lang/Integer;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method

.method public bridge synthetic getFromId(I)Ljava/lang/Enum;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getFromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->id:I

    return v0
.end method
