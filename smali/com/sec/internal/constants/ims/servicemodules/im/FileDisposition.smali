.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
.super Ljava/lang/Enum;
.source "FileDisposition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field public static final enum ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field public static final enum RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field private static final mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    const-string v1, "ATTACH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    const-string v1, "RENDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 20
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->mValueToEnum:Landroid/util/SparseArray;

    .line 32
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 33
    .local v3, "entry":Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .end local v3    # "entry":Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "disposition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->mCode:I

    .line 27
    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 4
    .param p0, "value"    # I

    .line 47
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 48
    .local v0, "entry":Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    if-eqz v0, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 52
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->mCode:I

    return v0
.end method
