.class public final enum Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
.super Ljava/lang/Enum;
.source "ParamVvmUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VvmGreetingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Fun:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

.field public static final enum Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 48
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 49
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v1, "Name"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 50
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v1, "Custom"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 51
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v1, "Busy"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 52
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v1, "ExtendAbsence"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 53
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    const-string v1, "Fun"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Fun:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    .line 46
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    sget-object v8, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mId:I

    .line 58
    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 6
    .param p0, "id"    # I

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "actionflag":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 69
    .local v4, "r":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    iget v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mId:I

    if-ne v5, p0, :cond_0

    .line 70
    move-object v0, v4

    .line 71
    goto :goto_1

    .line 68
    .end local v4    # "r":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 1

    .line 46
    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->$VALUES:[Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->mId:I

    return v0
.end method
