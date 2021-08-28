.class public final enum Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
.super Ljava/lang/Enum;
.source "FtResumableOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

.field public static final enum MANUALLY_AUTOMATICALLY_RESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

.field public static final enum MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

.field public static final enum NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    const-string v1, "NOTRESUMABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    .line 24
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    const-string v1, "MANUALLY_RESUMABLE_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    .line 28
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    const-string v1, "MANUALLY_AUTOMATICALLY_RESUMABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_AUTOMATICALLY_RESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    .line 15
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->mId:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->mId:I

    return v0
.end method
