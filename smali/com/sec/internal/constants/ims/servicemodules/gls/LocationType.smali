.class public final enum Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
.super Ljava/lang/Enum;
.source "LocationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

.field public static final enum OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

.field public static final enum OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    const-string v1, "OWN_LOCATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    const-string v1, "OTHER_LOCATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    .line 3
    new-array v1, v4, [Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->mValue:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    .locals 1

    .line 3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 18
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
