.class public final Lcom/ibm/icu/lang/UScript;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/lang/UScript$ScriptUsage;
    }
.end annotation


# static fields
.field private static final usageValues:[Lcom/ibm/icu/lang/UScript$ScriptUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1512
    invoke-static {}, Lcom/ibm/icu/lang/UScript$ScriptUsage;->values()[Lcom/ibm/icu/lang/UScript$ScriptUsage;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/lang/UScript;->usageValues:[Lcom/ibm/icu/lang/UScript$ScriptUsage;

    return-void
.end method

.method public static final getScript(I)I
    .locals 3

    .line 1129
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x10ffff

    if-gt p0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 1130
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    const v1, 0xc000ff

    and-int v2, v0, v1

    .line 1131
    const/high16 v0, 0x400000

    if-ge v2, v0, :cond_2

    .line 1132
    return v2

    .line 1133
    :cond_2
    const/high16 v0, 0x800000

    if-ge v2, v0, :cond_3

    .line 1134
    const/4 v0, 0x0

    return v0

    .line 1135
    :cond_3
    const/high16 v0, 0xc00000

    if-ge v2, v0, :cond_4

    .line 1136
    const/4 v0, 0x1

    return v0

    .line 1138
    :cond_4
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    iget-object v0, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    and-int/lit16 v1, v2, 0xff

    aget-char v0, v0, v1

    return v0

    .line 1141
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final hasScript(II)Z
    .locals 5

    .line 1159
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    const v1, 0xc000ff

    and-int v2, v0, v1

    .line 1160
    const/high16 v0, 0x400000

    if-ge v2, v0, :cond_1

    .line 1161
    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1164
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    iget-object v3, v0, Lcom/ibm/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    .line 1165
    and-int/lit16 v4, v2, 0xff

    .line 1166
    const/high16 v0, 0xc00000

    if-lt v2, v0, :cond_2

    .line 1167
    add-int/lit8 v0, v4, 0x1

    aget-char v4, v3, v0

    .line 1169
    :cond_2
    const/16 v0, 0x7fff

    if-le p1, v0, :cond_3

    .line 1172
    const/4 v0, 0x0

    return v0

    .line 1174
    :cond_3
    :goto_1
    aget-char v0, v3, v4

    if-le p1, v0, :cond_4

    .line 1175
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1177
    :cond_4
    aget-char v0, v3, v4

    and-int/lit16 v0, v0, 0x7fff

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
